.class public Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;
.super Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Gifts/ResaleGiftsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SelectGiftSheet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;
    }
.end annotation


# instance fields
.field private actionView:Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;

.field private adapter:Lorg/telegram/ui/Components/UniversalAdapter;

.field private backdropButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

.field private final collectionName:Ljava/lang/String;

.field private filterScrollView:Landroid/widget/HorizontalScrollView;

.field private filtersContainer:Landroid/widget/LinearLayout;

.field private hadResaleGifts:Z

.field private modelButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

.field private onSelect:Lorg/telegram/messenger/Utilities$Callback;

.field private patternButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

.field private sortButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

.field private final state:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;

.field private willBeFirst:Z

.field private without:Ljava/util/HashSet;


# direct methods
.method public static synthetic $r8$lambda$0s38_injprGWQ2ZZ_sjURoz9hi8(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)V
    .locals 1

    .line 1941
    invoke-static {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetresaleList(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedPatternAttributes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1942
    :cond_0
    invoke-static {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetresaleList(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedPatternAttributes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1943
    invoke-static {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetresaleList(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->reload()V

    return-void
.end method

.method public static synthetic $r8$lambda$3EswReWmd19lSpBIN9ogjK4WTRA(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/ui/Components/UItem;Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 4

    .line 1877
    iget-object p2, p2, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    check-cast p2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    .line 1878
    iget-object p2, p2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide p2, p2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    .line 1879
    invoke-static {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetresaleList(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object p4

    iget-object p4, p4, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedPatternAttributes:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_2

    .line 1881
    invoke-static {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetresaleList(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object p4

    iget-object p4, p4, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedPatternAttributes:Ljava/util/HashSet;

    invoke-virtual {p4}, Ljava/util/HashSet;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_1

    .line 1882
    invoke-static {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetresaleList(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object p4

    iget-object p4, p4, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->patternAttributes:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p5

    const/4 p6, 0x0

    :cond_0
    :goto_0
    if-ge p6, p5, :cond_3

    invoke-virtual {p4, p6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 p6, p6, 0x1

    check-cast v0, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    .line 1883
    iget-object v1, v0, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v1, v1, p2

    if-eqz v1, :cond_0

    .line 1884
    invoke-static {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetresaleList(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedPatternAttributes:Ljava/util/HashSet;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1888
    :cond_1
    invoke-static {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetresaleList(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object p4

    iget-object p4, p4, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedPatternAttributes:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1891
    :cond_2
    invoke-static {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetresaleList(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object p4

    iget-object p4, p4, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedPatternAttributes:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1893
    :cond_3
    :goto_1
    invoke-static {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetresaleList(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->reload()V

    .line 1894
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$3_rEKninReNo61CL9UFz-UiQ8uQ(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->lambda$new$24()V

    return-void
.end method

.method public static synthetic $r8$lambda$4zUsK7IE39TWmjo4NaJbrkFMSdk(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/ui/Components/UItem;Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 4

    .line 1653
    iget-object p2, p2, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    check-cast p2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

    .line 1654
    iget-object p2, p2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide p2, p2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    .line 1655
    invoke-static {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetresaleList(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object p4

    iget-object p4, p4, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedModelAttributes:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_2

    .line 1657
    invoke-static {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetresaleList(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object p4

    iget-object p4, p4, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedModelAttributes:Ljava/util/HashSet;

    invoke-virtual {p4}, Ljava/util/HashSet;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_1

    .line 1658
    invoke-static {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetresaleList(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object p4

    iget-object p4, p4, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->modelAttributes:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p5

    const/4 p6, 0x0

    :cond_0
    :goto_0
    if-ge p6, p5, :cond_3

    invoke-virtual {p4, p6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 p6, p6, 0x1

    check-cast v0, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

    .line 1659
    iget-object v1, v0, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v1, v1, p2

    if-eqz v1, :cond_0

    .line 1660
    invoke-static {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetresaleList(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedModelAttributes:Ljava/util/HashSet;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1664
    :cond_1
    invoke-static {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetresaleList(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object p4

    iget-object p4, p4, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedModelAttributes:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1667
    :cond_2
    invoke-static {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetresaleList(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object p4

    iget-object p4, p4, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedModelAttributes:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1669
    :cond_3
    :goto_1
    invoke-static {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetresaleList(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->reload()V

    .line 1670
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$5mImhFIxfSOgZXmji0Ta_3PpzWo(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->lambda$new$3(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7e_21KuIzds4YOe-fFeh4DlN2r4(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;Lorg/telegram/messenger/browser/Browser$Progress;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->lambda$buyGift$25(Lorg/telegram/messenger/browser/Browser$Progress;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Boolean;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9qQ0qNQLQGuU9Xb-oPkZn2ykjtA(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;Landroid/view/View;IFF)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->lambda$new$22(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;Landroid/view/View;IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$BIAzuAS59rnUs4yLFwLF3Asds7k(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->lambda$new$9(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JGP3VTxFSY5ZesaZD3GWvNGw370(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;JLorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStarGift;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->lambda$buyGift$27(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;JLorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStarGift;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LL-e_j3FNzfJQk9PFnQJUW5z-Uc(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;)I
    .locals 3

    .line 1857
    invoke-static {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetresaleList(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->patternAttributesCounter:Ljava/util/HashMap;

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 1858
    invoke-static {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetresaleList(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object p0

    iget-object p0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->patternAttributesCounter:Ljava/util/HashMap;

    iget-object p2, p2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, -0x1

    return p0

    .line 1861
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method public static synthetic $r8$lambda$NuNOn8c9I0m-ZIx6PG-m5NVujes([Ljava/lang/String;Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 10

    const/4 p4, 0x0

    .line 1640
    aget-object p0, p0, p4

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->translitSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1641
    invoke-static {p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetresaleList(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedModelAttributes:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    .line 1642
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, p4

    :cond_0
    :goto_0
    if-ge v3, v2, :cond_5

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

    .line 1643
    invoke-static {p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetresaleList(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedModelAttributes:Ljava/util/HashSet;

    iget-object v6, v4, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v6, v5, 0x1

    .line 1644
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, v4, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;->name:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, v4, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;->name:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, v4, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;->name:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, v4, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;->name:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1645
    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetresaleList(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->modelAttributesCounter:Ljava/util/HashMap;

    iget-object v8, v4, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-nez v7, :cond_2

    move v7, p4

    goto :goto_1

    .line 1646
    :cond_2
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :goto_1
    invoke-static {v4, v7, p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ModelItem$Factory;->asModel(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;ILjava/lang/String;)Lorg/telegram/ui/Components/UItem;

    move-result-object v4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    if-nez v1, :cond_3

    if-nez v5, :cond_3

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    move v6, p4

    :cond_4
    :goto_2
    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1649
    :cond_5
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 1650
    sget p0, Lorg/telegram/messenger/R$string;->Gift2ResaleFiltersModelEmpty:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$EmptyView$Factory;->asEmptyView(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    return-void
.end method

.method public static synthetic $r8$lambda$QyaOa0UQfYVTgK8VN1C1GXU7Qlc(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)V
    .locals 1

    .line 1829
    invoke-static {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetresaleList(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedBackdropAttributes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1830
    :cond_0
    invoke-static {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetresaleList(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedBackdropAttributes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1831
    invoke-static {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetresaleList(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->reload()V

    return-void
.end method

.method public static synthetic $r8$lambda$YLp_qyAEKaAElBpPL_JtSPU9wPo(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_WSg2DXnHUikP99NhITT6thWTZk([Ljava/lang/String;Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 10

    const/4 p4, 0x0

    .line 1864
    aget-object p0, p0, p4

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->translitSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1865
    invoke-static {p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetresaleList(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedPatternAttributes:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    .line 1866
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, p4

    :cond_0
    :goto_0
    if-ge v3, v2, :cond_5

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    .line 1867
    invoke-static {p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetresaleList(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedPatternAttributes:Ljava/util/HashSet;

    iget-object v6, v4, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v6, v5, 0x1

    .line 1868
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, v4, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;->name:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, v4, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;->name:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, v4, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;->name:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, v4, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;->name:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1869
    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetresaleList(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->patternAttributesCounter:Ljava/util/HashMap;

    iget-object v8, v4, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-nez v7, :cond_2

    move v7, p4

    goto :goto_1

    .line 1870
    :cond_2
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :goto_1
    invoke-static {v4, v7, p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$PatternItem$Factory;->asPattern(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;ILjava/lang/String;)Lorg/telegram/ui/Components/UItem;

    move-result-object v4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    if-nez v1, :cond_3

    if-nez v5, :cond_3

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    move v6, p4

    :cond_4
    :goto_2
    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1873
    :cond_5
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 1874
    sget p0, Lorg/telegram/messenger/R$string;->Gift2ResaleFiltersSymbolEmpty:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$EmptyView$Factory;->asEmptyView(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    return-void
.end method

.method public static synthetic $r8$lambda$djdi_mTAZUHbxCJ5zfbvYZwyVIU(Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 0

    .line 1849
    iget-object p0, p0, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p0, :cond_0

    .line 1850
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$e0wxnRi6X5dMR5a7g0VV6uMCcIA(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->lambda$new$21(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hvepRCM1oIxSlAU8elHLQG_OelQ(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    const/4 p0, 0x0

    .line 2017
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jURQLAe3phVMInwDSXtL1wof3rI(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)V
    .locals 1

    .line 1600
    invoke-static {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetresaleList(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object p0

    sget-object v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;->BY_PRICE:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->setSorting(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;)V

    return-void
.end method

.method public static synthetic $r8$lambda$n8Cl92jiJChXSGAPBXgMh4pfiQY(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;JLorg/telegram/ui/Stars/StarGiftSheet$PaymentFormState;Lorg/telegram/messenger/browser/Browser$Progress;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->lambda$buyGift$26(Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;JLorg/telegram/ui/Stars/StarGiftSheet$PaymentFormState;Lorg/telegram/messenger/browser/Browser$Progress;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nm8A9QTA0pY-rnulXwF0nqEgaD8(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)V
    .locals 1

    .line 1606
    invoke-static {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetresaleList(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object p0

    sget-object v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;->BY_NUMBER:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->setSorting(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oUj5czK9SfWwZGzQYnwGVC91nKk(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;)I
    .locals 1

    .line 1745
    invoke-static {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetresaleList(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->backdropAttributesCounter:Ljava/util/HashMap;

    iget p1, p1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->backdrop_id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 1746
    invoke-static {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetresaleList(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object p0

    iget-object p0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->backdropAttributesCounter:Ljava/util/HashMap;

    iget p2, p2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->backdrop_id:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, -0x1

    return p0

    .line 1749
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method public static synthetic $r8$lambda$pMd9R_SdftmoEPV9Hmt6GmhkqW8([Ljava/lang/String;Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 10

    const/4 p4, 0x0

    .line 1752
    aget-object p0, p0, p4

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->translitSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1753
    invoke-static {p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetresaleList(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedBackdropAttributes:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    .line 1754
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, p4

    :cond_0
    :goto_0
    if-ge v3, v2, :cond_5

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    .line 1755
    invoke-static {p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetresaleList(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedBackdropAttributes:Ljava/util/HashSet;

    iget v6, v4, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->backdrop_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v6, v5, 0x1

    .line 1756
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, v4, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;->name:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, v4, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;->name:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, v4, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;->name:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, v4, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;->name:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1757
    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetresaleList(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->backdropAttributesCounter:Ljava/util/HashMap;

    iget v8, v4, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->backdrop_id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-nez v7, :cond_2

    move v7, p4

    goto :goto_1

    .line 1758
    :cond_2
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :goto_1
    invoke-static {v4, v7, p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$BackdropItem$Factory;->asBackdrop(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;ILjava/lang/String;)Lorg/telegram/ui/Components/UItem;

    move-result-object v4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    if-nez v1, :cond_3

    if-nez v5, :cond_3

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    move v6, p4

    :cond_4
    :goto_2
    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1761
    :cond_5
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 1762
    sget p0, Lorg/telegram/messenger/R$string;->Gift2ResaleFiltersBackdropEmpty:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$EmptyView$Factory;->asEmptyView(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    return-void
.end method

.method public static synthetic $r8$lambda$qn1VK4C-6vWIgv_OkTc9loxTwE8(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)V
    .locals 1

    .line 1717
    invoke-static {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetresaleList(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedModelAttributes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1718
    :cond_0
    invoke-static {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetresaleList(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedModelAttributes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1719
    invoke-static {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetresaleList(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->reload()V

    return-void
.end method

.method public static synthetic $r8$lambda$qw_h22c-b6W0FWq8tjqvdNdqP94(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->lambda$new$15(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rKw4xUT3aiIjvhzvC9_FnWHqSvM(Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 0

    .line 1737
    iget-object p0, p0, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p0, :cond_0

    .line 1738
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$rljTWKi1ta0olinV1UVkQpEFDxU(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)V
    .locals 1

    .line 1603
    invoke-static {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetresaleList(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object p0

    sget-object v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;->BY_DATE:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->setSorting(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sn7TqtNUbV-qBdAJIr3uNpOA5Lc(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;)I
    .locals 3

    .line 1633
    invoke-static {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetresaleList(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->modelAttributesCounter:Ljava/util/HashMap;

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 1634
    invoke-static {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetresaleList(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object p0

    iget-object p0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->modelAttributesCounter:Ljava/util/HashMap;

    iget-object p2, p2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, -0x1

    return p0

    .line 1637
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method public static synthetic $r8$lambda$v-vs1yz87O9ZsTYBNb8sIhiSnlk(Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 0

    .line 1625
    iget-object p0, p0, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p0, :cond_0

    .line 1626
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$xRb_bKj58eZnF1PRB92b_PtnTis(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/ui/Components/UItem;Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 1

    .line 1765
    iget-object p2, p2, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    check-cast p2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    .line 1766
    iget p2, p2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->backdrop_id:I

    .line 1767
    invoke-static {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetresaleList(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object p3

    iget-object p3, p3, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedBackdropAttributes:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 1769
    invoke-static {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetresaleList(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object p3

    iget-object p3, p3, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedBackdropAttributes:Ljava/util/HashSet;

    invoke-virtual {p3}, Ljava/util/HashSet;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 1770
    invoke-static {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetresaleList(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object p3

    iget-object p3, p3, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->backdropAttributes:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p4

    const/4 p5, 0x0

    :cond_0
    :goto_0
    if-ge p5, p4, :cond_3

    invoke-virtual {p3, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p6

    add-int/lit8 p5, p5, 0x1

    check-cast p6, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    .line 1771
    iget v0, p6, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->backdrop_id:I

    if-eq v0, p2, :cond_0

    .line 1772
    invoke-static {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetresaleList(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedBackdropAttributes:Ljava/util/HashSet;

    iget p6, p6, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->backdrop_id:I

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    invoke-virtual {v0, p6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1776
    :cond_1
    invoke-static {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetresaleList(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object p3

    iget-object p3, p3, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedBackdropAttributes:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1779
    :cond_2
    invoke-static {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetresaleList(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object p3

    iget-object p3, p3, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedBackdropAttributes:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1781
    :cond_3
    :goto_1
    invoke-static {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetresaleList(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->reload()V

    .line 1782
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$xfgwUtnzAr-tIyOX6hKfNdG7-p0(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->onScroll()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetadapter(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;)Lorg/telegram/ui/Components/UniversalAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monScroll(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->onScroll()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)V
    .locals 10

    .line 1572
    sget-object v6, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$ActionBarType;->SLIDING:Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$ActionBarType;

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLorg/telegram/ui/Components/BottomSheetWithRecyclerListView$ActionBarType;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2106
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->without:Ljava/util/HashSet;

    const/high16 p1, 0x41400000    # 12.0f

    .line 1574
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->headerMoveTop:I

    .line 1575
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    .line 1577
    iput-object p2, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->collectionName:Ljava/lang/String;

    .line 1578
    iput-object p3, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->state:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;

    .line 1580
    iget-object p1, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1582
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->filtersContainer:Landroid/widget/LinearLayout;

    const/high16 p2, 0x41300000    # 11.0f

    .line 1583
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {p1, v2, v4, p2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 1584
    iget-object p1, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->filtersContainer:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1585
    iget-object p1, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->filtersContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 1586
    iget-object p1, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->filtersContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 1588
    new-instance p1, Landroid/widget/HorizontalScrollView;

    invoke-direct {p1, v1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    iput-object p1, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->filterScrollView:Landroid/widget/HorizontalScrollView;

    .line 1589
    invoke-virtual {p1, p2}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 1590
    iget-object p1, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->filterScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 1591
    iget-object p1, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->filterScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 1592
    iget-object p1, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->filterScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v2, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->filtersContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 1594
    new-instance p1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, v1, v2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p1, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->sortButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    .line 1595
    invoke-static {p3}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetresaleList(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->getSorting()Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;->setSorting(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;)V

    .line 1596
    iget-object p1, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->filtersContainer:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->sortButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v3, -0x2

    const/4 v4, -0x2

    const/16 v5, 0x10

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1597
    iget-object p1, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->sortButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    new-instance v2, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p3}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1614
    new-instance p1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, v1, v2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p1, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->modelButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    .line 1615
    sget v2, Lorg/telegram/messenger/R$string;->Gift2AttributeModel:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;->setValue(Ljava/lang/CharSequence;)V

    .line 1616
    iget-object p1, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->filtersContainer:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->modelButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    const/4 v3, -0x2

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1617
    iget-object p1, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->modelButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    new-instance v2, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p3, v1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;Landroid/content/Context;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1726
    new-instance p1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, v1, v2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p1, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->backdropButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    .line 1727
    sget v2, Lorg/telegram/messenger/R$string;->Gift2AttributeBackdrop:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;->setValue(Ljava/lang/CharSequence;)V

    .line 1728
    iget-object p1, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->filtersContainer:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->backdropButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    const/4 v3, -0x2

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1729
    iget-object p1, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->backdropButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    new-instance v2, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p3, v1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;Landroid/content/Context;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1838
    new-instance p1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, v1, v2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p1, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->patternButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    .line 1839
    sget v2, Lorg/telegram/messenger/R$string;->Gift2AttributeSymbol:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;->setValue(Ljava/lang/CharSequence;)V

    .line 1840
    iget-object p1, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->filtersContainer:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->patternButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    const/4 v8, 0x0

    const/4 v3, -0x2

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1841
    iget-object p1, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->patternButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    new-instance v2, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p3, v1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;Landroid/content/Context;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1950
    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {p1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 1951
    new-instance v2, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$7;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$7;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;)V

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 1959
    iget-object v2, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1960
    iget-object p1, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, p3}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)V

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    .line 2003
    iget-object p1, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v2, v4

    iget v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v4, v3

    invoke-virtual {p1, v2, p2, v4, p2}, Landroid/view/View;->setPadding(IIII)V

    .line 2004
    iget-object p1, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$8;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$8;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;)V

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 2011
    new-instance p1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    .line 2012
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 2013
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 2014
    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x15e

    .line 2015
    invoke-virtual {p1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    .line 2016
    iget-object v2, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 2017
    iget-object p1, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$$ExternalSyntheticLambda7;

    invoke-direct {v2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setItemSelectorColorProvider(Lorg/telegram/messenger/GenericProvider;)V

    .line 2019
    new-instance p1, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;

    invoke-direct {p1, v1}, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;-><init>(Landroid/content/Context;)V

    iput-object p1, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->actionView:Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;

    const/high16 v1, 0x41a00000    # 20.0f

    .line 2020
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v2, 0x41100000    # 9.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->setPadding(II)V

    .line 2021
    iget-object p1, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->actionView:Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;

    const/high16 v1, 0x41b00000    # 22.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->setRoundRadius(F)V

    .line 2022
    iget-object p1, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->actionView:Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->setFullRect(Z)V

    .line 2023
    iget-object p1, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->actionView:Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->prepareBlur(Landroid/view/View;)V

    .line 2024
    iget-object p1, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->actionView:Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    .line 2025
    iget-object p1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    iget-object v1, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->actionView:Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;

    const/4 v2, -0x2

    const/16 v3, 0x37

    const/4 v4, -0x1

    invoke-static {v4, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2027
    iget-object p1, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 2029
    new-instance p1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;)V

    invoke-virtual {p3, p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->listen(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 1510
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 1510
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method private buyGift(Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;)V
    .locals 8

    .line 2061
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    const-wide/16 v0, 0x190

    .line 2062
    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->showDelayed(J)V

    .line 2063
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v5

    .line 2064
    iget-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->resale_ton_only:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;->TON:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    sget-object v0, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;->STARS:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    goto :goto_0

    .line 2065
    :goto_1
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0, v3}, Lorg/telegram/ui/Stars/StarsController;->getInstance(ILorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v7

    new-instance v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$$ExternalSyntheticLambda28;

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;J)V

    invoke-virtual {v7, v4, v5, v6, v0}, Lorg/telegram/ui/Stars/StarsController;->getResellingGiftForm(Lorg/telegram/tgnet/tl/TL_stars$StarGift;JLorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method private fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2157
    iget-object v2, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->state:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;

    if-eqz v2, :cond_b

    invoke-static {v2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetlist(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Stars/StarsController$GiftsList;

    move-result-object v2

    if-eqz v2, :cond_b

    iget-object v2, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->state:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;

    invoke-static {v2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetresaleList(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_6

    .line 2159
    :cond_0
    iget v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    .line 2160
    sget v3, Lorg/telegram/messenger/R$string;->GiftCraftSelectYour:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-static {v4, v3}, Lorg/telegram/ui/Components/UItem;->asHeader(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2163
    iget-object v3, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->state:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;

    invoke-static {v3}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetlist(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Stars/StarsController$GiftsList;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move v8, v5

    move v9, v8

    move v7, v6

    :goto_0
    if-ge v9, v4, :cond_3

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    check-cast v10, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    .line 2164
    iget-object v11, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->without:Ljava/util/HashSet;

    iget-object v12, v10, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-wide v12, v12, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_0

    .line 2165
    :cond_1
    iget v7, v10, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->can_craft_at:I

    if-gt v7, v2, :cond_2

    move v7, v6

    goto :goto_1

    :cond_2
    move v7, v5

    .line 2166
    :goto_1
    iget-object v12, v10, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell$Factory;->asStarGift(ILorg/telegram/tgnet/tl/TL_stars$StarGift;ZZZZZ)Lorg/telegram/ui/Components/UItem;

    move-result-object v10

    invoke-virtual {v10, v7}, Lorg/telegram/ui/Components/UItem;->setEnabled(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    move v7, v5

    goto :goto_0

    .line 2170
    :cond_3
    iget-object v2, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->state:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;

    invoke-static {v2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetlist(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Stars/StarsController$GiftsList;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/ui/Stars/StarsController$GiftsList;->loading:Z

    const/16 v3, 0x23

    if-nez v2, :cond_5

    iget-object v2, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->state:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;

    invoke-static {v2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetlist(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Stars/StarsController$GiftsList;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/ui/Stars/StarsController$GiftsList;->endReached:Z

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    if-eqz v7, :cond_6

    .line 2178
    sget v2, Lorg/telegram/messenger/R$string;->GiftCraftSelectYourEmpty:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/Components/UItem;->asCenterShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 2171
    :cond_5
    :goto_2
    rem-int/lit8 v8, v8, 0x3

    rsub-int/lit8 v2, v8, 0x6

    move v4, v5

    :goto_3
    if-ge v4, v2, :cond_6

    sub-int v7, v4, v8

    add-int/2addr v7, v6

    .line 2175
    invoke-static {v7, v3}, Lorg/telegram/ui/Components/UItem;->asFlicker(II)Lorg/telegram/ui/Components/UItem;

    move-result-object v7

    invoke-virtual {v7, v6}, Lorg/telegram/ui/Components/UItem;->setSpanCount(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2180
    :cond_6
    :goto_4
    iget-object v2, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->state:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;

    invoke-static {v2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetresaleList(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->getTotalCount()I

    move-result v2

    if-gtz v2, :cond_7

    iget-boolean v2, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->hadResaleGifts:Z

    if-eqz v2, :cond_b

    .line 2181
    :cond_7
    iput-boolean v6, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->hadResaleGifts:Z

    .line 2182
    sget v2, Lorg/telegram/messenger/R$string;->GiftCraftSelectResale:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, -0x2

    invoke-static {v4, v2}, Lorg/telegram/ui/Components/UItem;->asAnimatedHeader(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2183
    iget-object v2, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->filterScrollView:Landroid/widget/HorizontalScrollView;

    if-eqz v2, :cond_8

    const/4 v4, -0x3

    .line 2184
    invoke-static {v4, v2}, Lorg/telegram/ui/Components/UItem;->asCustom(ILandroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2186
    :cond_8
    iget-object v2, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->state:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;

    invoke-static {v2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetresaleList(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_5
    if-ge v5, v4, :cond_9

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v5, v5, 0x1

    move-object v9, v7

    check-cast v9, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 2187
    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell$Factory;->asStarGift(ILorg/telegram/tgnet/tl/TL_stars$StarGift;ZZZZZ)Lorg/telegram/ui/Components/UItem;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 2189
    :cond_9
    iget-object v2, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->state:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;

    invoke-static {v2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetresaleList(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->loading:Z

    if-nez v2, :cond_a

    iget-object v2, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->state:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;

    invoke-static {v2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetresaleList(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->endReached:Z

    if-nez v2, :cond_b

    :cond_a
    const/16 v2, 0xa

    .line 2190
    invoke-static {v2, v3}, Lorg/telegram/ui/Components/UItem;->asFlicker(II)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/UItem;->setSpanCount(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v2, 0xb

    .line 2191
    invoke-static {v2, v3}, Lorg/telegram/ui/Components/UItem;->asFlicker(II)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/UItem;->setSpanCount(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v2, 0xc

    .line 2192
    invoke-static {v2, v3}, Lorg/telegram/ui/Components/UItem;->asFlicker(II)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/UItem;->setSpanCount(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v2, 0xd

    .line 2194
    invoke-static {v2, v3}, Lorg/telegram/ui/Components/UItem;->asFlicker(II)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/UItem;->setSpanCount(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v2, 0xe

    .line 2195
    invoke-static {v2, v3}, Lorg/telegram/ui/Components/UItem;->asFlicker(II)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/UItem;->setSpanCount(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v2, 0xf

    .line 2196
    invoke-static {v2, v3}, Lorg/telegram/ui/Components/UItem;->asFlicker(II)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/UItem;->setSpanCount(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_6
    return-void
.end method

.method private synthetic lambda$buyGift$25(Lorg/telegram/messenger/browser/Browser$Progress;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 0

    .line 2073
    invoke-virtual {p1}, Lorg/telegram/messenger/browser/Browser$Progress;->end()V

    .line 2074
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2075
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->onSelect:Lorg/telegram/messenger/Utilities$Callback;

    if-eqz p1, :cond_0

    .line 2076
    invoke-interface {p1, p2}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    .line 2078
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$buyGift$26(Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;JLorg/telegram/ui/Stars/StarGiftSheet$PaymentFormState;Lorg/telegram/messenger/browser/Browser$Progress;)V
    .locals 8

    .line 2071
    invoke-virtual {p5}, Lorg/telegram/messenger/browser/Browser$Progress;->init()V

    .line 2072
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    iget-object v1, p4, Lorg/telegram/ui/Stars/StarGiftSheet$PaymentFormState;->currency:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    invoke-static {v0, v1}, Lorg/telegram/ui/Stars/StarsController;->getInstance(ILorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v2

    iget-object v3, p4, Lorg/telegram/ui/Stars/StarGiftSheet$PaymentFormState;->form:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStarGift;

    new-instance v7, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0, p5, p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;Lorg/telegram/messenger/browser/Browser$Progress;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;)V

    move-object v4, p1

    move-wide v5, p2

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Stars/StarsController;->buyResellingGift(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStarGift;Lorg/telegram/tgnet/tl/TL_stars$StarGift;JLorg/telegram/messenger/Utilities$Callback2;)V

    return-void
.end method

.method private synthetic lambda$buyGift$27(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;JLorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStarGift;)V
    .locals 11

    move-object/from16 v0, p6

    .line 2066
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    if-nez v0, :cond_0

    return-void

    .line 2068
    :cond_0
    new-instance v4, Lorg/telegram/ui/Stars/StarGiftSheet$PaymentFormState;

    invoke-direct {v4, p2, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$PaymentFormState;-><init>(Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStarGift;)V

    .line 2070
    new-instance v0, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p3, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " #"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p3, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->num:I

    int-to-long v6, p2

    const/16 p2, 0x2c

    invoke-static {v6, v7, p2}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$$ExternalSyntheticLambda29;

    move-wide v6, p4

    invoke-direct {v10, p0, p3, v6, v7}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;J)V

    const/4 v9, 0x1

    move-object v3, p3

    invoke-direct/range {v0 .. v10}, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Lorg/telegram/ui/Stars/StarGiftSheet$PaymentFormState;IJLjava/lang/String;ZLorg/telegram/messenger/Utilities$Callback2;)V

    .line 2081
    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->show()V

    return-void
.end method

.method private synthetic lambda$new$15(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;Landroid/content/Context;Landroid/view/View;)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    .line 1730
    invoke-static {v9}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetresaleList(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->backdropAttributes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1731
    :cond_0
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    iget-object v2, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-object v3, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->backdropButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static {v0, v2, v3, v10, v11}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;ZZ)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    .line 1732
    invoke-virtual {v0, v10}, Lorg/telegram/ui/Components/ItemOptions;->setDrawScrim(Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    .line 1733
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->setOnTopOfScrim()Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    const/high16 v2, -0x3f000000    # -8.0f

    .line 1734
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/Components/ItemOptions;->translate(FF)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    .line 1735
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->needsFocus()Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v12

    .line 1736
    new-instance v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$$ExternalSyntheticLambda15;

    invoke-direct {v0, v12}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Components/ItemOptions;)V

    invoke-virtual {v12, v0}, Lorg/telegram/ui/Components/ItemOptions;->setOnDismiss(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 1742
    const-string v0, ""

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v13

    .line 1743
    new-instance v14, Ljava/util/ArrayList;

    invoke-static {v9}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetresaleList(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->backdropAttributes:Ljava/util/ArrayList;

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1744
    new-instance v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$$ExternalSyntheticLambda16;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)V

    invoke-static {v14, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1751
    new-instance v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$3;

    iget v3, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    new-instance v5, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$$ExternalSyntheticLambda17;

    invoke-direct {v5, v13, v9, v14}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$$ExternalSyntheticLambda17;-><init>([Ljava/lang/String;Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;Ljava/util/ArrayList;)V

    new-instance v6, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$$ExternalSyntheticLambda18;

    invoke-direct {v6, v9, v12}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;Lorg/telegram/ui/Components/ItemOptions;)V

    const/4 v7, 0x0

    iget-object v8, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v4, 0x0

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$3;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;Landroid/content/Context;IILorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback5;Lorg/telegram/messenger/Utilities$Callback5Return;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1792
    iget-object v3, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v3, v10}, Lorg/telegram/ui/Components/UniversalAdapter;->setApplyBackground(Z)V

    .line 1794
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1795
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1796
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1797
    sget v5, Lorg/telegram/messenger/R$drawable;->smiles_inputsearch:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1798
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    invoke-virtual {v1, v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v15, 0x18

    const/high16 v16, 0x41c00000    # 24.0f

    const/16 v17, 0x13

    const/high16 v18, 0x41200000    # 10.0f

    const/16 v19, 0x0

    .line 1799
    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1800
    new-instance v4, Lorg/telegram/ui/Components/EditTextCaption;

    iget-object v5, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v4, v2, v5}, Lorg/telegram/ui/Components/EditTextCaption;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/high16 v2, 0x41800000    # 16.0f

    .line 1801
    invoke-virtual {v4, v11, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    const v2, 0x8c001

    .line 1802
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 1803
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 1804
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText3:I

    iget-object v5, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 1805
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v5, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    const/high16 v2, 0x41980000    # 19.0f

    .line 1806
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    const/high16 v2, 0x3fc00000    # 1.5f

    .line 1807
    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    .line 1808
    sget v2, Lorg/telegram/messenger/R$string;->Gift2ResaleFiltersSearch:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 1809
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    iget-object v5, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    const/4 v2, 0x0

    .line 1810
    invoke-virtual {v4, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v20, 0x41000000    # 8.0f

    const/4 v15, -0x1

    const/high16 v16, -0x40000000    # -2.0f

    const/high16 v18, 0x422c0000    # 43.0f

    .line 1811
    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1812
    new-instance v2, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$4;

    invoke-direct {v2, v1, v13, v0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$4;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;[Ljava/lang/String;Lorg/telegram/ui/Components/UniversalRecyclerView;)V

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1823
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v4, 0x8

    if-le v2, v4, :cond_1

    const/4 v2, -0x1

    const/16 v4, 0x2c

    .line 1824
    invoke-static {v2, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v12, v3, v2}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)Lorg/telegram/ui/Components/ItemOptions;

    .line 1825
    invoke-virtual {v12}, Lorg/telegram/ui/Components/ItemOptions;->addGap()Lorg/telegram/ui/Components/ItemOptions;

    .line 1827
    :cond_1
    invoke-static {v9}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetresaleList(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedBackdropAttributes:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1828
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_select:I

    sget v3, Lorg/telegram/messenger/R$string;->SelectAll:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$$ExternalSyntheticLambda19;

    invoke-direct {v4, v9}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)V

    invoke-virtual {v12, v2, v3, v4}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 1834
    :cond_2
    invoke-virtual {v12, v0}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    .line 1835
    invoke-virtual {v12}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    return-void
.end method

.method private synthetic lambda$new$21(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;Landroid/content/Context;Landroid/view/View;)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    .line 1842
    invoke-static {v9}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetresaleList(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->patternAttributes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1843
    :cond_0
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    iget-object v2, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-object v3, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->patternButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static {v0, v2, v3, v10, v11}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;ZZ)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    .line 1844
    invoke-virtual {v0, v10}, Lorg/telegram/ui/Components/ItemOptions;->setDrawScrim(Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    .line 1845
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->setOnTopOfScrim()Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    const/high16 v2, -0x3f000000    # -8.0f

    .line 1846
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/Components/ItemOptions;->translate(FF)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    .line 1847
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->needsFocus()Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v12

    .line 1848
    new-instance v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$$ExternalSyntheticLambda20;

    invoke-direct {v0, v12}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/Components/ItemOptions;)V

    invoke-virtual {v12, v0}, Lorg/telegram/ui/Components/ItemOptions;->setOnDismiss(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 1854
    const-string v0, ""

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v13

    .line 1855
    new-instance v14, Ljava/util/ArrayList;

    invoke-static {v9}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetresaleList(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->patternAttributes:Ljava/util/ArrayList;

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1856
    new-instance v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$$ExternalSyntheticLambda21;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)V

    invoke-static {v14, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1863
    new-instance v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$5;

    iget v3, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    new-instance v5, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$$ExternalSyntheticLambda22;

    invoke-direct {v5, v13, v9, v14}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$$ExternalSyntheticLambda22;-><init>([Ljava/lang/String;Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;Ljava/util/ArrayList;)V

    new-instance v6, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$$ExternalSyntheticLambda23;

    invoke-direct {v6, v9, v12}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;Lorg/telegram/ui/Components/ItemOptions;)V

    const/4 v7, 0x0

    iget-object v8, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v4, 0x0

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$5;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;Landroid/content/Context;IILorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback5;Lorg/telegram/messenger/Utilities$Callback5Return;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1904
    iget-object v3, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v3, v10}, Lorg/telegram/ui/Components/UniversalAdapter;->setApplyBackground(Z)V

    .line 1906
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1907
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1908
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1909
    sget v5, Lorg/telegram/messenger/R$drawable;->smiles_inputsearch:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1910
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    invoke-virtual {v1, v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v15, 0x18

    const/high16 v16, 0x41c00000    # 24.0f

    const/16 v17, 0x13

    const/high16 v18, 0x41200000    # 10.0f

    const/16 v19, 0x0

    .line 1911
    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1912
    new-instance v4, Lorg/telegram/ui/Components/EditTextCaption;

    iget-object v5, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v4, v2, v5}, Lorg/telegram/ui/Components/EditTextCaption;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/high16 v2, 0x41800000    # 16.0f

    .line 1913
    invoke-virtual {v4, v11, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    const v2, 0x8c001

    .line 1914
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 1915
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 1916
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText3:I

    iget-object v5, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 1917
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v5, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    const/high16 v2, 0x41980000    # 19.0f

    .line 1918
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    const/high16 v2, 0x3fc00000    # 1.5f

    .line 1919
    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    .line 1920
    sget v2, Lorg/telegram/messenger/R$string;->Gift2ResaleFiltersSearch:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 1921
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    iget-object v5, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    const/4 v2, 0x0

    .line 1922
    invoke-virtual {v4, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v20, 0x41000000    # 8.0f

    const/4 v15, -0x1

    const/high16 v16, -0x40000000    # -2.0f

    const/high16 v18, 0x422c0000    # 43.0f

    .line 1923
    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1924
    new-instance v2, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$6;

    invoke-direct {v2, v1, v13, v0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$6;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;[Ljava/lang/String;Lorg/telegram/ui/Components/UniversalRecyclerView;)V

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1935
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v4, 0x8

    if-le v2, v4, :cond_1

    const/4 v2, -0x1

    const/16 v4, 0x2c

    .line 1936
    invoke-static {v2, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v12, v3, v2}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)Lorg/telegram/ui/Components/ItemOptions;

    .line 1937
    invoke-virtual {v12}, Lorg/telegram/ui/Components/ItemOptions;->addGap()Lorg/telegram/ui/Components/ItemOptions;

    .line 1939
    :cond_1
    invoke-static {v9}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetresaleList(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedPatternAttributes:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1940
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_select:I

    sget v3, Lorg/telegram/messenger/R$string;->SelectAll:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$$ExternalSyntheticLambda24;

    invoke-direct {v4, v9}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)V

    invoke-virtual {v12, v2, v3, v4}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 1946
    :cond_2
    invoke-virtual {v12, v0}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    .line 1947
    invoke-virtual {v12}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    return-void
.end method

.method private synthetic lambda$new$22(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;Landroid/view/View;IFF)V
    .locals 4

    .line 1961
    iget-object p2, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 p4, 0x1

    sub-int/2addr p3, p4

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/UniversalAdapter;->getItem(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 1963
    :cond_0
    iget-object p3, p2, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of p5, p3, Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    if-eqz p5, :cond_6

    .line 1964
    check-cast p3, Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    .line 1965
    iget-boolean p5, p2, Lorg/telegram/ui/Components/UItem;->red:Z

    .line 1967
    iget-object v0, p3, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->gift_address:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->willBeFirst:Z

    if-eqz v0, :cond_1

    .line 1968
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget p2, Lorg/telegram/messenger/R$string;->GiftCraftCantChooseFirstTitle:I

    .line 1969
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->GiftCraftCantChooseFirst:I

    .line 1970
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->OK:I

    .line 1971
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 1972
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void

    :cond_1
    if-eqz p5, :cond_2

    .line 1976
    instance-of v0, p3, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-eqz v0, :cond_2

    .line 1977
    iget-object p1, p2, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    check-cast p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->buyGift(Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;)V

    return-void

    :cond_2
    if-nez p5, :cond_5

    .line 1981
    invoke-static {p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetlist(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Stars/StarsController$GiftsList;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 p5, 0x0

    move v0, p5

    :cond_3
    if-ge v0, p2, :cond_4

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    check-cast v2, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    .line 1982
    iget-object v3, v2, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    if-ne v3, p3, :cond_3

    goto :goto_0

    :cond_4
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_5

    .line 1987
    iget p1, v2, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->can_craft_at:I

    if-lez p1, :cond_5

    .line 1988
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result p1

    .line 1989
    iget p2, v2, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->can_craft_at:I

    if-le p2, p1, :cond_5

    .line 1990
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p2, Lorg/telegram/messenger/R$string;->GiftCraftUnavailableTitle:I

    .line 1991
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->GiftCraftUnavailableTextTime:I

    iget p3, v2, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->can_craft_at:I

    int-to-long v2, p3

    .line 1992
    invoke-static {v2, v3, p4}, Lorg/telegram/messenger/LocaleController;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object p3

    new-array p4, p4, [Ljava/lang/Object;

    aput-object p3, p4, p5

    invoke-static {p2, p4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->OK:I

    .line 1993
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 1994
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void

    .line 1999
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->onSelect:Lorg/telegram/messenger/Utilities$Callback;

    invoke-interface {p1, p3}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    .line 2000
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    :cond_6
    :goto_1
    return-void
.end method

.method private synthetic lambda$new$24()V
    .locals 3

    .line 2030
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 2031
    new-instance v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;)V

    const-wide/16 v1, 0x96

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$new$3(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;Landroid/view/View;)V
    .locals 3

    .line 1598
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-object v1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->sortButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->menu_sort_value:I

    sget-object v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;->BY_PRICE:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;

    iget v1, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;->buttonStringResId:I

    .line 1599
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$$ExternalSyntheticLambda25;

    invoke-direct {v2, p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)V

    invoke-virtual {p2, v0, v1, v2}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->menu_sort_date:I

    sget-object v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;->BY_DATE:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;

    iget v1, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;->buttonStringResId:I

    .line 1602
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$$ExternalSyntheticLambda26;

    invoke-direct {v2, p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)V

    invoke-virtual {p2, v0, v1, v2}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->menu_sort_number:I

    sget-object v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;->BY_NUMBER:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;

    iget v1, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;->buttonStringResId:I

    .line 1605
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$$ExternalSyntheticLambda27;

    invoke-direct {v2, p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)V

    invoke-virtual {p2, v0, v1, v2}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    const/4 p2, 0x0

    .line 1608
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ItemOptions;->setDrawScrim(Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    .line 1609
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->setOnTopOfScrim()Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    const/high16 p2, -0x3f000000    # -8.0f

    .line 1610
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lorg/telegram/ui/Components/ItemOptions;->translate(FF)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    .line 1611
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    return-void
.end method

.method private synthetic lambda$new$9(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;Landroid/content/Context;Landroid/view/View;)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    .line 1618
    invoke-static {v9}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetresaleList(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->modelAttributes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1619
    :cond_0
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    iget-object v2, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-object v3, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->modelButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static {v0, v2, v3, v10, v11}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;ZZ)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    .line 1620
    invoke-virtual {v0, v10}, Lorg/telegram/ui/Components/ItemOptions;->setDrawScrim(Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    .line 1621
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->setOnTopOfScrim()Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    const/high16 v2, -0x3f000000    # -8.0f

    .line 1622
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/Components/ItemOptions;->translate(FF)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    .line 1623
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->needsFocus()Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v12

    .line 1624
    new-instance v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$$ExternalSyntheticLambda9;

    invoke-direct {v0, v12}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/ItemOptions;)V

    invoke-virtual {v12, v0}, Lorg/telegram/ui/Components/ItemOptions;->setOnDismiss(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 1630
    const-string v0, ""

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v13

    .line 1631
    new-instance v14, Ljava/util/ArrayList;

    invoke-static {v9}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetresaleList(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->modelAttributes:Ljava/util/ArrayList;

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1632
    new-instance v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$$ExternalSyntheticLambda10;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)V

    invoke-static {v14, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1639
    new-instance v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$1;

    iget v3, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    new-instance v5, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$$ExternalSyntheticLambda11;

    invoke-direct {v5, v13, v9, v14}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$$ExternalSyntheticLambda11;-><init>([Ljava/lang/String;Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;Ljava/util/ArrayList;)V

    new-instance v6, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$$ExternalSyntheticLambda12;

    invoke-direct {v6, v9, v12}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;Lorg/telegram/ui/Components/ItemOptions;)V

    const/4 v7, 0x0

    iget-object v8, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v4, 0x0

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$1;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;Landroid/content/Context;IILorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback5;Lorg/telegram/messenger/Utilities$Callback5Return;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1680
    iget-object v3, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v3, v10}, Lorg/telegram/ui/Components/UniversalAdapter;->setApplyBackground(Z)V

    .line 1682
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1683
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1684
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1685
    sget v5, Lorg/telegram/messenger/R$drawable;->smiles_inputsearch:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1686
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    invoke-virtual {v1, v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v15, 0x18

    const/high16 v16, 0x41c00000    # 24.0f

    const/16 v17, 0x13

    const/high16 v18, 0x41200000    # 10.0f

    const/16 v19, 0x0

    .line 1687
    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1688
    new-instance v4, Lorg/telegram/ui/Components/EditTextCaption;

    iget-object v5, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v4, v2, v5}, Lorg/telegram/ui/Components/EditTextCaption;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/high16 v2, 0x41800000    # 16.0f

    .line 1689
    invoke-virtual {v4, v11, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    const v2, 0x8c001

    .line 1690
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 1691
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 1692
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText3:I

    iget-object v5, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 1693
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v5, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    const/high16 v2, 0x41980000    # 19.0f

    .line 1694
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    const/high16 v2, 0x3fc00000    # 1.5f

    .line 1695
    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    .line 1696
    sget v2, Lorg/telegram/messenger/R$string;->Gift2ResaleFiltersSearch:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 1697
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    iget-object v5, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    const/4 v2, 0x0

    .line 1698
    invoke-virtual {v4, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v20, 0x41000000    # 8.0f

    const/4 v15, -0x1

    const/high16 v16, -0x40000000    # -2.0f

    const/high16 v18, 0x422c0000    # 43.0f

    .line 1699
    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1700
    new-instance v2, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$2;

    invoke-direct {v2, v1, v13, v0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$2;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;[Ljava/lang/String;Lorg/telegram/ui/Components/UniversalRecyclerView;)V

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1711
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v4, 0x8

    if-le v2, v4, :cond_1

    const/4 v2, -0x1

    const/16 v4, 0x2c

    .line 1712
    invoke-static {v2, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v12, v3, v2}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)Lorg/telegram/ui/Components/ItemOptions;

    .line 1713
    invoke-virtual {v12}, Lorg/telegram/ui/Components/ItemOptions;->addGap()Lorg/telegram/ui/Components/ItemOptions;

    .line 1715
    :cond_1
    invoke-static {v9}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetresaleList(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedModelAttributes:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1716
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_select:I

    sget v3, Lorg/telegram/messenger/R$string;->SelectAll:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$$ExternalSyntheticLambda13;

    invoke-direct {v4, v9}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)V

    invoke-virtual {v12, v2, v3, v4}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 1722
    :cond_2
    invoke-virtual {v12, v0}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    .line 1723
    invoke-virtual {v12}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    return-void
.end method

.method private onScroll()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 2037
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 2038
    iget-object v3, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2039
    instance-of v4, v3, Lorg/telegram/ui/Components/FlickerLoadingView;

    if-eqz v4, :cond_2

    .line 2040
    iget-object v4, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-gez v3, :cond_0

    goto :goto_1

    .line 2042
    :cond_0
    iget-object v5, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v5, v3}, Lorg/telegram/ui/Components/UniversalAdapter;->getItem(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2044
    iget v3, v3, Lorg/telegram/ui/Components/UItem;->id:I

    const/16 v5, 0xa

    if-ge v3, v5, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    move v2, v4

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    .line 2053
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->state:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;

    invoke-static {v0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetlist(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Stars/StarsController$GiftsList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->load()V

    :cond_4
    if-eqz v2, :cond_5

    .line 2056
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->state:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;

    invoke-static {v0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;->-$$Nest$fgetresaleList(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->load()V

    :cond_5
    return-void
.end method

.method private updateList(Z)V
    .locals 1

    .line 2125
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void
.end method


# virtual methods
.method protected createAdapter(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
    .locals 8

    .line 2139
    new-instance v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$9;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    new-instance v6, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;)V

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$9;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;IILorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    return-object v0
.end method

.method protected getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 2130
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->collectionName:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 2133
    :cond_0
    sget v0, Lorg/telegram/messenger/R$string;->GiftCraftSelectTitle:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onSheetTop(F)V
    .locals 4

    .line 2087
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    add-float/2addr p1, v0

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->actionView:Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    neg-float v0, p1

    const/high16 v1, 0x41000000    # 8.0f

    .line 2088
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->actionView:Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->clamp01(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    .line 2089
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    cmpl-float v3, p1, v2

    if-lez v3, :cond_0

    sub-float v2, p1, v2

    const/high16 v3, 0x43000000    # 128.0f

    .line 2091
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    div-float/2addr v2, v3

    sub-float v2, v1, v2

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->clamp01(F)F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 2094
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->actionView:Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setScaleX(F)V

    .line 2095
    iget-object v2, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->actionView:Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setScaleY(F)V

    .line 2096
    iget-object v2, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->actionView:Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v0, v3, v1}, Lorg/telegram/messenger/AndroidUtilities;->ilerp(FFF)F

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 2097
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->actionView:Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->setTranslationY(F)V

    return-void
.end method

.method public setActionText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;
    .locals 1

    .line 2120
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->actionView:Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet$ActionView;->set(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setOnSelect(Lorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;
    .locals 0

    .line 2102
    iput-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->onSelect:Lorg/telegram/messenger/Utilities$Callback;

    return-object p0
.end method

.method public setWillBeFirst(Z)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;
    .locals 0

    .line 2115
    iput-boolean p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->willBeFirst:Z

    return-object p0
.end method

.method public without(Ljava/util/HashSet;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;
    .locals 1

    .line 2108
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->without:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    .line 2109
    invoke-direct {p0, p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->updateList(Z)V

    return-object p0
.end method
