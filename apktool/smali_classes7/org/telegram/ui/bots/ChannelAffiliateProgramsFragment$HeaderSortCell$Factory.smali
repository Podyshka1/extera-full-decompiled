.class public Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$HeaderSortCell$Factory;
.super Lorg/telegram/ui/Components/UItem$UItemFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$HeaderSortCell;
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

    .line 625
    new-instance v0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$HeaderSortCell$Factory;

    invoke-direct {v0}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$HeaderSortCell$Factory;-><init>()V

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem$UItemFactory;->setup(Lorg/telegram/ui/Components/UItem$UItemFactory;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 624
    invoke-direct {p0}, Lorg/telegram/ui/Components/UItem$UItemFactory;-><init>()V

    return-void
.end method

.method public static as(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;
    .locals 1

    .line 638
    const-class v0, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$HeaderSortCell$Factory;

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->ofFactory(Ljava/lang/Class;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 639
    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    .line 640
    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->subtext:Ljava/lang/CharSequence;

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Lorg/telegram/ui/Components/UItem;ZLorg/telegram/ui/Components/UniversalAdapter;Lorg/telegram/ui/Components/UniversalRecyclerView;)V
    .locals 0

    .line 634
    check-cast p1, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$HeaderSortCell;

    iget-object p3, p2, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    iget-object p2, p2, Lorg/telegram/ui/Components/UItem;->subtext:Ljava/lang/CharSequence;

    invoke-virtual {p1, p3, p2}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$HeaderSortCell;->set(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic createView(Landroid/content/Context;Lorg/telegram/ui/Components/RecyclerListView;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/view/View;
    .locals 0

    .line 624
    invoke-virtual/range {p0 .. p5}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$HeaderSortCell$Factory;->createView(Landroid/content/Context;Lorg/telegram/ui/Components/RecyclerListView;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$HeaderSortCell;

    move-result-object p1

    return-object p1
.end method

.method public createView(Landroid/content/Context;Lorg/telegram/ui/Components/RecyclerListView;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$HeaderSortCell;
    .locals 0

    .line 629
    new-instance p2, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$HeaderSortCell;

    invoke-direct {p2, p1, p5}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$HeaderSortCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-object p2
.end method

.method public isClickable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
