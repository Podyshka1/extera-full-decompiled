.class public Lorg/telegram/ui/Gifts/GiftSheet$GiftCell$Factory;
.super Lorg/telegram/ui/Components/UItem$UItemFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/telegram/ui/Components/UItem$UItemFactory;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1940
    new-instance v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell$Factory;

    invoke-direct {v0}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell$Factory;-><init>()V

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem$UItemFactory;->setup(Lorg/telegram/ui/Components/UItem$UItemFactory;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1939
    invoke-direct {p0}, Lorg/telegram/ui/Components/UItem$UItemFactory;-><init>()V

    return-void
.end method

.method public static asPremiumGift(Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;)Lorg/telegram/ui/Components/UItem;
    .locals 2

    .line 1974
    const-class v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell$Factory;

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->ofFactory(Ljava/lang/Class;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UItem;->setSpanCount(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 1975
    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public static asStarGift(ILorg/telegram/tgnet/tl/TL_stars$SavedStarGift;ZZZ)Lorg/telegram/ui/Components/UItem;
    .locals 2

    .line 1998
    const-class v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell$Factory;

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->ofFactory(Ljava/lang/Class;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UItem;->setSpanCount(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 1999
    iput p0, v0, Lorg/telegram/ui/Components/UItem;->intValue:I

    .line 2000
    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    .line 2001
    iput-boolean p2, v0, Lorg/telegram/ui/Components/UItem;->accent:Z

    .line 2002
    iput-boolean p3, v0, Lorg/telegram/ui/Components/UItem;->collapsed:Z

    .line 2003
    iput-boolean p4, v0, Lorg/telegram/ui/Components/UItem;->red:Z

    return-object v0
.end method

.method public static asStarGift(ILorg/telegram/tgnet/tl/TL_stars$StarGift;ZZZZZ)Lorg/telegram/ui/Components/UItem;
    .locals 2

    .line 1980
    const-class v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell$Factory;

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->ofFactory(Ljava/lang/Class;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UItem;->setSpanCount(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 1981
    iput p0, v0, Lorg/telegram/ui/Components/UItem;->intValue:I

    .line 1982
    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    .line 1983
    iput-boolean p2, v0, Lorg/telegram/ui/Components/UItem;->checked:Z

    .line 1984
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->object2:Ljava/lang/Object;

    .line 1985
    iput-boolean p5, v0, Lorg/telegram/ui/Components/UItem;->red:Z

    .line 1986
    iput-boolean p4, v0, Lorg/telegram/ui/Components/UItem;->accent:Z

    .line 1987
    iput-boolean p6, v0, Lorg/telegram/ui/Components/UItem;->locked:Z

    return-object v0
.end method


# virtual methods
.method public attachedView(Lorg/telegram/ui/Components/RecyclerListView;Landroid/view/View;Lorg/telegram/ui/Components/UItem;)V
    .locals 0

    .line 1970
    check-cast p2, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;

    iget-boolean p1, p3, Lorg/telegram/ui/Components/UItem;->reordering:Z

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->setReordering(ZZ)V

    return-void
.end method

.method public bindView(Landroid/view/View;Lorg/telegram/ui/Components/UItem;ZLorg/telegram/ui/Components/UniversalAdapter;Lorg/telegram/ui/Components/UniversalRecyclerView;)V
    .locals 7

    .line 1949
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;

    .line 1951
    iget-object p1, p2, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of p3, p1, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

    if-eqz p3, :cond_0

    .line 1952
    check-cast p1, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->setPremiumGift(Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;)Z

    move-result p1

    goto :goto_0

    .line 1953
    :cond_0
    instance-of p3, p1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    const/4 p4, 0x0

    if-eqz p3, :cond_2

    .line 1954
    move-object v1, p1

    check-cast v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    .line 1955
    iget-boolean v2, p2, Lorg/telegram/ui/Components/UItem;->checked:Z

    iget-object p1, p2, Lorg/telegram/ui/Components/UItem;->object2:Ljava/lang/Object;

    instance-of p3, p1, Ljava/lang/Boolean;

    if-eqz p3, :cond_1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    :cond_1
    move v3, p4

    iget-boolean v4, p2, Lorg/telegram/ui/Components/UItem;->accent:Z

    iget-boolean v5, p2, Lorg/telegram/ui/Components/UItem;->red:Z

    iget-boolean v6, p2, Lorg/telegram/ui/Components/UItem;->locked:Z

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->setStarsGift(Lorg/telegram/tgnet/tl/TL_stars$StarGift;ZZZZZ)Z

    move-result p1

    goto :goto_0

    .line 1956
    :cond_2
    instance-of p3, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    if-eqz p3, :cond_3

    .line 1957
    check-cast p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    .line 1958
    iget-boolean p3, p2, Lorg/telegram/ui/Components/UItem;->accent:Z

    iget-boolean p4, p2, Lorg/telegram/ui/Components/UItem;->red:Z

    invoke-virtual {v0, p1, p3, p4}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->setStarsGift(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;ZZ)Z

    move-result p1

    goto :goto_0

    :cond_3
    move p1, p4

    .line 1960
    :goto_0
    iget-boolean p3, p2, Lorg/telegram/ui/Components/UItem;->collapsed:Z

    if-eqz p3, :cond_4

    .line 1961
    iget-boolean p3, p2, Lorg/telegram/ui/Components/UItem;->checked:Z

    invoke-virtual {v0, p3, p1}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->setChecked(ZZ)V

    .line 1963
    :cond_4
    iget-boolean p3, p2, Lorg/telegram/ui/Components/UItem;->reordering:Z

    invoke-virtual {v0, p3, p1}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->setReordering(ZZ)V

    .line 1964
    iget-object p1, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->card:Landroid/widget/FrameLayout;

    iget-boolean p3, p2, Lorg/telegram/ui/Components/UItem;->enabled:Z

    const/high16 p4, 0x3f800000    # 1.0f

    if-eqz p3, :cond_5

    move p3, p4

    goto :goto_1

    :cond_5
    const p3, 0x3f266666    # 0.65f

    :goto_1
    invoke-virtual {p1, p3}, Landroid/view/View;->setAlpha(F)V

    .line 1965
    invoke-static {v0}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->-$$Nest$fgetribbon(Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;)Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    move-result-object p1

    iget-boolean p2, p2, Lorg/telegram/ui/Components/UItem;->enabled:Z

    if-eqz p2, :cond_6

    goto :goto_2

    :cond_6
    const/high16 p4, 0x3f000000    # 0.5f

    :goto_2
    invoke-virtual {p1, p4}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public bridge synthetic createView(Landroid/content/Context;Lorg/telegram/ui/Components/RecyclerListView;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/view/View;
    .locals 0

    .line 1939
    invoke-virtual/range {p0 .. p5}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell$Factory;->createView(Landroid/content/Context;Lorg/telegram/ui/Components/RecyclerListView;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;

    move-result-object p1

    return-object p1
.end method

.method public createView(Landroid/content/Context;Lorg/telegram/ui/Components/RecyclerListView;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;
    .locals 0

    .line 1944
    new-instance p2, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;

    invoke-direct {p2, p1, p3, p5}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-object p2
.end method

.method public equals(Lorg/telegram/ui/Components/UItem;Lorg/telegram/ui/Components/UItem;)Z
    .locals 7

    .line 2009
    iget-boolean v0, p1, Lorg/telegram/ui/Components/UItem;->accent:Z

    iget-boolean v1, p2, Lorg/telegram/ui/Components/UItem;->accent:Z

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 2010
    :cond_0
    iget-object v0, p1, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v3, p2, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    if-eqz v3, :cond_7

    .line 2011
    :cond_1
    instance-of v3, v0, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

    if-eqz v3, :cond_3

    .line 2012
    iget-object p1, p2, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    if-ne v0, p1, :cond_2

    return v1

    :cond_2
    return v2

    .line 2013
    :cond_3
    instance-of v3, v0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    if-eqz v3, :cond_5

    iget-object v3, p2, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of v4, v3, Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    if-eqz v4, :cond_5

    .line 2014
    check-cast v0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    .line 2015
    check-cast v3, Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    .line 2016
    iget-wide p1, v0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    iget-wide v3, v3, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    cmp-long p1, p1, v3

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v2

    .line 2017
    :cond_5
    instance-of v3, v0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    if-eqz v3, :cond_7

    iget-object v3, p2, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of v4, v3, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    if-eqz v4, :cond_7

    .line 2018
    check-cast v0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    .line 2019
    check-cast v3, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    .line 2020
    iget-object p1, v0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-wide p1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    iget-object v4, v3, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-wide v4, v4, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    cmp-long p1, p1, v4

    if-nez p1, :cond_6

    iget p1, v0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->date:I

    iget p2, v3, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->date:I

    if-ne p1, p2, :cond_6

    iget-wide p1, v0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->saved_id:J

    iget-wide v3, v3, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->saved_id:J

    cmp-long p1, p1, v3

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v2

    .line 2023
    :cond_7
    iget v0, p1, Lorg/telegram/ui/Components/UItem;->intValue:I

    iget v3, p2, Lorg/telegram/ui/Components/UItem;->intValue:I

    if-ne v0, v3, :cond_8

    iget-boolean v0, p1, Lorg/telegram/ui/Components/UItem;->checked:Z

    iget-boolean v3, p2, Lorg/telegram/ui/Components/UItem;->checked:Z

    if-ne v0, v3, :cond_8

    iget-wide v3, p1, Lorg/telegram/ui/Components/UItem;->longValue:J

    iget-wide v5, p2, Lorg/telegram/ui/Components/UItem;->longValue:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_8

    iget-object p1, p1, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    iget-object p2, p2, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    .line 2027
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    return v1

    :cond_8
    return v2
.end method
