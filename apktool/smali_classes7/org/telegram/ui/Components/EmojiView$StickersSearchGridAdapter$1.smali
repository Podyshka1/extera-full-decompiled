.class Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final emojiArrays:Ljava/util/ArrayList;

.field final emojiStickers:Ljava/util/HashMap;

.field final emojiStickersArray:Ljava/util/ArrayList;

.field final emojiStickersMap:Landroid/util/LongSparseArray;

.field lastId:I

.field final localPacks:Ljava/util/ArrayList;

.field final localPacksByName:Ljava/util/HashMap;

.field final localPacksByShortName:Ljava/util/HashMap;

.field query:Ljava/lang/String;

.field final serverPacks:Ljava/util/ArrayList;

.field final synthetic this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;


# direct methods
.method public static synthetic $r8$lambda$2Pt2ytVABj67HTy51djyvKFDeDE(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;Ljava/util/HashMap;Ljava/lang/Runnable;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->lambda$addFromSuggestions$0(Ljava/util/HashMap;Ljava/lang/Runnable;Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5_oG9MwudLN6qehjDCSMcSpjkg0(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->addLocalPacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5qDemOr1tKAuvj37_yoEQr9CI20(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->searchStickers(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$80icp84xSq9iEzvmwdqCG6GrA-k(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->lambda$searchStickers$3(Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FWJmmJpUFngxJ3tK8LHdVaOT4Wg(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->searchStickerSets(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HKKzqvPLgjidzoG9yLKZie6ffOU(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->addPremiumStickers(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IQayWNWh_F9u0MmB8jirO1_w3tU(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->addFromAllStickers(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PJ3iHlQLPlHdtDz54DdBvUp-QdE(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->addFromSuggestions(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U_CbukV37lBMjkBs4uDPUMQZKNU(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->lambda$searchStickers$2(Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$opFniTrA7N5FmmVJfZZfvTOKb10(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;Ljava/lang/Runnable;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->lambda$searchStickerSets$1(Ljava/lang/Runnable;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$osMy-FKwLOG4nmk3lHczXRGv95o(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->searchFinish()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;)V
    .locals 1

    .line 8846
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8850
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->serverPacks:Ljava/util/ArrayList;

    .line 8851
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->localPacks:Ljava/util/ArrayList;

    .line 8852
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->localPacksByShortName:Ljava/util/HashMap;

    .line 8853
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->localPacksByName:Ljava/util/HashMap;

    .line 8854
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->emojiStickers:Ljava/util/HashMap;

    .line 8855
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->emojiArrays:Ljava/util/ArrayList;

    .line 8857
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->emojiStickersArray:Ljava/util/ArrayList;

    .line 8858
    new-instance p1, Landroid/util/LongSparseArray;

    invoke-direct {p1, v0}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->emojiStickersMap:Landroid/util/LongSparseArray;

    return-void
.end method

.method private addFromAllStickers(Ljava/lang/Runnable;)V
    .locals 10

    .line 8880
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v0, v0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getAllStickers()Ljava/util/HashMap;

    move-result-object v0

    .line 8882
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->query:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xe

    if-gt v1, v2, :cond_7

    .line 8883
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->query:Ljava/lang/String;

    .line 8884
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    add-int/lit8 v5, v2, -0x1

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ge v4, v5, :cond_2

    .line 8886
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const v8, 0xd83c

    if-ne v5, v8, :cond_0

    add-int/lit8 v5, v4, 0x1

    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    const v9, 0xdffb

    if-lt v8, v9, :cond_0

    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const v8, 0xdfff

    if-le v5, v8, :cond_1

    :cond_0
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v8, 0x200d

    if-ne v5, v8, :cond_2

    add-int/lit8 v5, v4, 0x1

    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    const/16 v9, 0x2640

    if-eq v8, v9, :cond_1

    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v8, 0x2642

    if-ne v5, v8, :cond_2

    .line 8887
    :cond_1
    invoke-interface {v1, v3, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    add-int/lit8 v8, v4, 0x2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v9

    invoke-interface {v1, v8, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    new-array v6, v6, [Ljava/lang/CharSequence;

    aput-object v5, v6, v3

    aput-object v1, v6, v7

    invoke-static {v6}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    add-int/lit8 v2, v2, -0x2

    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 8890
    :cond_2
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const v8, 0xfe0f

    if-ne v5, v8, :cond_3

    .line 8891
    invoke-interface {v1, v3, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    add-int/lit8 v8, v4, 0x1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v9

    invoke-interface {v1, v8, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    new-array v6, v6, [Ljava/lang/CharSequence;

    aput-object v5, v6, v3

    aput-object v1, v6, v7

    invoke-static {v6}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/2addr v4, v7

    goto/16 :goto_0

    :cond_4
    if-eqz v0, :cond_5

    .line 8896
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_7

    .line 8897
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 8898
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->emojiStickersArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 8899
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_4
    if-ge v3, v1, :cond_6

    .line 8900
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    .line 8901
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->emojiStickersMap:Landroid/util/LongSparseArray;

    iget-wide v5, v2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v4, v5, v6, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 8903
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->emojiStickers:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->emojiStickersArray:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->-$$Nest$fgetsearchQuery(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8904
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->emojiArrays:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->emojiStickersArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8907
    :cond_7
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private addFromSuggestions(Ljava/lang/Runnable;)V
    .locals 8

    .line 8911
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v0, v0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getAllStickers()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8913
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->query:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 8914
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getCurrentKeyboardLanguage()[Ljava/lang/String;

    move-result-object v1

    .line 8915
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    iget-object v2, v2, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetlastSearchKeyboardLanguage(Lorg/telegram/ui/Components/EmojiView;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8916
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    iget-object v2, v2, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v2, v2, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/MediaDataController;->fetchNewEmojiKeywords([Ljava/lang/String;)V

    .line 8918
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    iget-object v2, v2, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2, v1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fputlastSearchKeyboardLanguage(Lorg/telegram/ui/Components/EmojiView;[Ljava/lang/String;)V

    .line 8919
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    iget-object v1, v1, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v1, v1, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    iget-object v1, v1, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetlastSearchKeyboardLanguage(Lorg/telegram/ui/Components/EmojiView;)[Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->-$$Nest$fgetsearchQuery(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1$$ExternalSyntheticLambda8;

    invoke-direct {v6, p0, v0, p1}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;Ljava/util/HashMap;Ljava/lang/Runnable;)V

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/messenger/MediaDataController;->getEmojiSuggestions([Ljava/lang/String;Ljava/lang/String;ZLorg/telegram/messenger/MediaDataController$KeywordResultCallback;Z)V

    return-void

    .line 8937
    :cond_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private addLocalPacks(Ljava/lang/Runnable;)V
    .locals 9

    .line 8984
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v0, v0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaDataController;->getStickerSets(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 8985
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    iget-object v2, v2, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v2, v2, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesController;->filterPremiumStickers(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 8987
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :goto_0
    const/16 v4, 0x20

    if-ge v3, v2, :cond_4

    .line 8988
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 8989
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    invoke-static {v7}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->-$$Nest$fgetsearchQuery(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_1

    if-eqz v6, :cond_0

    .line 8990
    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    add-int/lit8 v8, v6, -0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v4, :cond_3

    .line 8991
    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->localPacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8992
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->localPacksByName:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 8994
    :cond_1
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    invoke-static {v7}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->-$$Nest$fgetsearchQuery(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_3

    if-eqz v6, :cond_2

    .line 8995
    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v4, :cond_3

    .line 8996
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->localPacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8997
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->localPacksByShortName:Ljava/util/HashMap;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9001
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v0, v0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MediaDataController;->getStickerSets(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 9002
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    iget-object v2, v2, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v2, v2, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesController;->filterPremiumStickers(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 9003
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_2
    if-ge v1, v2, :cond_9

    .line 9004
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 9005
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->-$$Nest$fgetsearchQuery(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/telegram/messenger/AndroidUtilities;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_6

    if-eqz v5, :cond_5

    .line 9006
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    add-int/lit8 v7, v5, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v4, :cond_8

    .line 9007
    :cond_5
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->localPacks:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9008
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->localPacksByName:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 9010
    :cond_6
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    if-eqz v5, :cond_8

    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->-$$Nest$fgetsearchQuery(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/telegram/messenger/AndroidUtilities;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_8

    if-eqz v5, :cond_7

    .line 9011
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_8

    .line 9012
    :cond_7
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->localPacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9013
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->localPacksByShortName:Ljava/util/HashMap;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 9017
    :cond_9
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private addPremiumStickers(Ljava/lang/Runnable;)V
    .locals 13

    .line 8942
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v0, v0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getAllStickers()Ljava/util/HashMap;

    move-result-object v0

    .line 8944
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 8945
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8946
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 8947
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    :cond_1
    :goto_0
    if-ge v4, v5, :cond_0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Document;

    .line 8948
    iget-wide v7, v6, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {v6}, Lorg/telegram/messenger/MessageObject;->isPremiumSticker(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 8949
    iget-wide v7, v6, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 8950
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8951
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->emojiStickersMap:Landroid/util/LongSparseArray;

    iget-wide v8, v6, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v7, v8, v9, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 8956
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v0, v0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getFeaturedStickerSets()Ljava/util/ArrayList;

    move-result-object v0

    .line 8957
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v5, v4

    :cond_3
    if-ge v5, v3, :cond_6

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    .line 8958
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->cover:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v7, :cond_4

    iget-wide v7, v7, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->cover:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v7}, Lorg/telegram/messenger/MessageObject;->isPremiumSticker(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 8959
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->cover:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v7, v7, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 8960
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->cover:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8961
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->emojiStickersMap:Landroid/util/LongSparseArray;

    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->cover:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v9, v8, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v7, v9, v10, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 8963
    :cond_4
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->covers:Ljava/util/ArrayList;

    if-eqz v6, :cond_3

    .line 8964
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v4

    :cond_5
    :goto_1
    if-ge v8, v7, :cond_3

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Lorg/telegram/tgnet/TLRPC$Document;

    .line 8965
    iget-wide v10, v9, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    invoke-static {v9}, Lorg/telegram/messenger/MessageObject;->isPremiumSticker(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 8966
    iget-wide v10, v9, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 8967
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8968
    iget-object v10, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->emojiStickersMap:Landroid/util/LongSparseArray;

    iget-wide v11, v9, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v10, v11, v12, v9}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_1

    .line 8974
    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 8975
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->emojiStickersArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 8976
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->emojiStickers:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->emojiStickersArray:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->-$$Nest$fgetsearchQuery(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8977
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->emojiArrays:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->emojiStickersArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8980
    :cond_7
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$addFromSuggestions$0(Ljava/util/HashMap;Ljava/lang/Runnable;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 4

    .line 8920
    iget-object p4, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    invoke-static {p4}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->-$$Nest$fgetemojiSearchId(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;)I

    move-result p4

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->lastId:I

    if-eq p4, v0, :cond_0

    return-void

    .line 8924
    :cond_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_2

    .line 8925
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MediaDataController$KeywordResult;

    iget-object v1, v1, Lorg/telegram/messenger/MediaDataController$KeywordResult;->emoji:Ljava/lang/String;

    .line 8926
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 8927
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 8928
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->emojiStickers:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 8929
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->emojiStickers:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8930
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->emojiArrays:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8934
    :cond_2
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$searchStickerSets$1(Ljava/lang/Runnable;Ljava/util/ArrayList;)V
    .locals 6

    .line 9024
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->-$$Nest$fgetemojiSearchId(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->lastId:I

    if-eq v0, v1, :cond_0

    return-void

    .line 9027
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->emojiStickersArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 9028
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    .line 9029
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->emojiStickersMap:Landroid/util/LongSparseArray;

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v3, v4, v5, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 9031
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->emojiStickers:Ljava/util/HashMap;

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->emojiStickersArray:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->-$$Nest$fgetsearchQuery(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9032
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->emojiArrays:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->emojiStickersArray:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9033
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$searchStickers$2(Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;)V
    .locals 6

    .line 9057
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->-$$Nest$fgetemojiSearchId(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->lastId:I

    if-eq v0, v1, :cond_0

    return-void

    .line 9061
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->-$$Nest$fputreqId2(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;I)V

    .line 9062
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;->emoticon:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->query:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 9063
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickers;

    if-nez p1, :cond_1

    .line 9064
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void

    .line 9067
    :cond_1
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickers;

    .line 9068
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->emojiStickersArray:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 9069
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickers;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 9070
    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickers;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    .line 9071
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->emojiStickersMap:Landroid/util/LongSparseArray;

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v3, v4, v5}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v3

    if-ltz v3, :cond_2

    goto :goto_1

    .line 9074
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->emojiStickersArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9076
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->emojiStickersArray:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-eq p1, p2, :cond_4

    .line 9078
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->emojiStickers:Ljava/util/HashMap;

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->emojiStickersArray:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->-$$Nest$fgetsearchQuery(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_4

    .line 9080
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->emojiArrays:Ljava/util/ArrayList;

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->emojiStickersArray:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9084
    :cond_4
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$searchStickers$3(Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 9056
    new-instance p4, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1$$ExternalSyntheticLambda10;

    invoke-direct {p4, p0, p1, p3, p2}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private searchFinish()V
    .locals 2

    .line 8861
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->-$$Nest$fgetemojiSearchId(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->lastId:I

    if-eq v0, v1, :cond_0

    return-void

    .line 8865
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->localPacks:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->-$$Nest$fputlocalPacks(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;Ljava/util/ArrayList;)V

    .line 8866
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->serverPacks:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->-$$Nest$fputserverPacks(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;Ljava/util/ArrayList;)V

    .line 8867
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->localPacksByShortName:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->-$$Nest$fputlocalPacksByShortName(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;Ljava/util/HashMap;)V

    .line 8868
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->localPacksByName:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->-$$Nest$fputlocalPacksByName(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;Ljava/util/HashMap;)V

    .line 8869
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->emojiStickers:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->-$$Nest$fputemojiStickers(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;Ljava/util/HashMap;)V

    .line 8870
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->emojiArrays:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->-$$Nest$fputemojiArrays(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;Ljava/util/ArrayList;)V

    .line 8871
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetstickersSearchField(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->showProgress(Z)V

    .line 8873
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetstickersGridView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    iget-object v1, v1, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetstickersSearchGridAdapter(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 8874
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetstickersGridView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    iget-object v1, v1, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetstickersSearchGridAdapter(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 8876
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private searchStickerSets(Ljava/lang/Runnable;)V
    .locals 5

    .line 9021
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getCurrentKeyboardLanguage()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 9022
    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    aget-object v0, v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, ""

    .line 9023
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    iget-object v2, v2, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v2, v2, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->query:Ljava/lang/String;

    new-instance v4, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1$$ExternalSyntheticLambda9;

    invoke-direct {v4, p0, p1}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v1, v0, v3, v4}, Lorg/telegram/messenger/MediaDataController;->searchStickers(ZLjava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/messenger/MediaDataController$SearchStickersKey;

    return-void
.end method

.method private searchStickers(Ljava/lang/Runnable;)V
    .locals 4

    .line 9052
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->-$$Nest$fgetsearchQuery(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/Emoji;->fullyConsistsOfEmojis(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9053
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;-><init>()V

    .line 9054
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->query:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;->emoticon:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 9055
    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;->hash:J

    .line 9056
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    iget-object v2, v1, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v2, v2, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0, v0, p1}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p1

    invoke-static {v1, p1}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->-$$Nest$fputreqId2(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;I)V

    return-void

    .line 9087
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 9093
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->-$$Nest$fgetsearchQuery(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9094
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetstickersGridView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    iget-object v1, v1, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetstickersGridAdapter(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 9095
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetstickersGridView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    iget-object v1, v1, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetstickersGridAdapter(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 9097
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->notifyDataSetChanged()V

    return-void

    .line 9100
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->-$$Nest$fgetemojiSearchId(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->-$$Nest$fputemojiSearchId(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;I)V

    iput v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->lastId:I

    .line 9101
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->-$$Nest$fgetsearchQuery(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->query:Ljava/lang/String;

    .line 9103
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->serverPacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9104
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->localPacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9105
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->localPacksByShortName:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 9106
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->localPacksByName:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 9107
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->emojiStickers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 9108
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->emojiArrays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9110
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->emojiStickersArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9111
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->emojiStickersMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 9113
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetstickersSearchField(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/EmojiView$SearchField;->showProgress(Z)V

    .line 9115
    const-string v0, "premium"

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 9116
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;)V

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;)V

    new-array v2, v2, [Lorg/telegram/messenger/Utilities$Callback;

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lorg/telegram/messenger/Utilities;->raceCallbacks(Ljava/lang/Runnable;[Lorg/telegram/messenger/Utilities$Callback;)V

    return-void

    .line 9122
    :cond_2
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;)V

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;)V

    new-instance v4, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;)V

    new-instance v5, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;)V

    new-instance v6, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1$$ExternalSyntheticLambda5;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;)V

    new-instance v7, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1$$ExternalSyntheticLambda6;

    invoke-direct {v7, p0}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;)V

    const/4 v8, 0x5

    new-array v8, v8, [Lorg/telegram/messenger/Utilities$Callback;

    aput-object v3, v8, v1

    aput-object v4, v8, v2

    const/4 v1, 0x2

    aput-object v5, v8, v1

    const/4 v1, 0x3

    aput-object v6, v8, v1

    const/4 v1, 0x4

    aput-object v7, v8, v1

    invoke-static {v0, v8}, Lorg/telegram/messenger/Utilities;->raceCallbacks(Ljava/lang/Runnable;[Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method
