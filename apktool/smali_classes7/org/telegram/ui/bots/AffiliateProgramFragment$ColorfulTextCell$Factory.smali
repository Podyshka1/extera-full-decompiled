.class public Lorg/telegram/ui/bots/AffiliateProgramFragment$ColorfulTextCell$Factory;
.super Lorg/telegram/ui/Components/UItem$UItemFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/bots/AffiliateProgramFragment$ColorfulTextCell;
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

    .line 729
    new-instance v0, Lorg/telegram/ui/bots/AffiliateProgramFragment$ColorfulTextCell$Factory;

    invoke-direct {v0}, Lorg/telegram/ui/bots/AffiliateProgramFragment$ColorfulTextCell$Factory;-><init>()V

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem$UItemFactory;->setup(Lorg/telegram/ui/Components/UItem$UItemFactory;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 728
    invoke-direct {p0}, Lorg/telegram/ui/Components/UItem$UItemFactory;-><init>()V

    return-void
.end method

.method public static as(IIILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;
    .locals 1

    .line 745
    const-class v0, Lorg/telegram/ui/bots/AffiliateProgramFragment$ColorfulTextCell$Factory;

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->ofFactory(Ljava/lang/Class;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 746
    iput p0, v0, Lorg/telegram/ui/Components/UItem;->id:I

    .line 747
    iput p1, v0, Lorg/telegram/ui/Components/UItem;->intValue:I

    .line 748
    iput p2, v0, Lorg/telegram/ui/Components/UItem;->iconResId:I

    .line 749
    iput-object p3, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    .line 750
    iput-object p4, v0, Lorg/telegram/ui/Components/UItem;->subtext:Ljava/lang/CharSequence;

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Lorg/telegram/ui/Components/UItem;ZLorg/telegram/ui/Components/UniversalAdapter;Lorg/telegram/ui/Components/UniversalRecyclerView;)V
    .locals 0

    .line 738
    check-cast p1, Lorg/telegram/ui/bots/AffiliateProgramFragment$ColorfulTextCell;

    iget p3, p2, Lorg/telegram/ui/Components/UItem;->intValue:I

    iget p4, p2, Lorg/telegram/ui/Components/UItem;->iconResId:I

    iget-object p5, p2, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    iget-object p2, p2, Lorg/telegram/ui/Components/UItem;->subtext:Ljava/lang/CharSequence;

    invoke-virtual {p1, p3, p4, p5, p2}, Lorg/telegram/ui/bots/AffiliateProgramFragment$ColorfulTextCell;->set(IILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic createView(Landroid/content/Context;Lorg/telegram/ui/Components/RecyclerListView;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/view/View;
    .locals 0

    .line 728
    invoke-virtual/range {p0 .. p5}, Lorg/telegram/ui/bots/AffiliateProgramFragment$ColorfulTextCell$Factory;->createView(Landroid/content/Context;Lorg/telegram/ui/Components/RecyclerListView;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/bots/AffiliateProgramFragment$ColorfulTextCell;

    move-result-object p1

    return-object p1
.end method

.method public createView(Landroid/content/Context;Lorg/telegram/ui/Components/RecyclerListView;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/bots/AffiliateProgramFragment$ColorfulTextCell;
    .locals 0

    .line 733
    new-instance p2, Lorg/telegram/ui/bots/AffiliateProgramFragment$ColorfulTextCell;

    invoke-direct {p2, p1, p5}, Lorg/telegram/ui/bots/AffiliateProgramFragment$ColorfulTextCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-object p2
.end method
