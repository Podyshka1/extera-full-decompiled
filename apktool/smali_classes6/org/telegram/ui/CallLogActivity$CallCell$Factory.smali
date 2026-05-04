.class public final Lorg/telegram/ui/CallLogActivity$CallCell$Factory;
.super Lorg/telegram/ui/Components/UItem$UItemFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/CallLogActivity$CallCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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

    .line 601
    new-instance v0, Lorg/telegram/ui/CallLogActivity$CallCell$Factory;

    invoke-direct {v0}, Lorg/telegram/ui/CallLogActivity$CallCell$Factory;-><init>()V

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem$UItemFactory;->setup(Lorg/telegram/ui/Components/UItem$UItemFactory;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 600
    invoke-direct {p0}, Lorg/telegram/ui/Components/UItem$UItemFactory;-><init>()V

    return-void
.end method

.method public static of(Lorg/telegram/ui/CallLogActivity$CallLogRow;Landroid/view/View$OnClickListener;)Lorg/telegram/ui/Components/UItem;
    .locals 1

    .line 617
    const-class v0, Lorg/telegram/ui/CallLogActivity$CallCell$Factory;

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->ofFactory(Ljava/lang/Class;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 618
    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    .line 619
    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->clickCallback:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Lorg/telegram/ui/Components/UItem;ZLorg/telegram/ui/Components/UniversalAdapter;Lorg/telegram/ui/Components/UniversalRecyclerView;)V
    .locals 0

    .line 610
    iget-object p3, p2, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    check-cast p3, Lorg/telegram/ui/CallLogActivity$CallLogRow;

    .line 611
    check-cast p1, Lorg/telegram/ui/CallLogActivity$CallCell;

    .line 612
    iget-object p4, p2, Lorg/telegram/ui/Components/UItem;->clickCallback:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3, p4}, Lorg/telegram/ui/CallLogActivity$CallCell;->set(Lorg/telegram/ui/CallLogActivity$CallLogRow;Landroid/view/View$OnClickListener;)V

    .line 613
    iget-boolean p2, p2, Lorg/telegram/ui/Components/UItem;->checked:Z

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/CallLogActivity$CallCell;->setChecked(ZZ)V

    return-void
.end method

.method public bridge synthetic createView(Landroid/content/Context;Lorg/telegram/ui/Components/RecyclerListView;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/view/View;
    .locals 0

    .line 600
    invoke-virtual/range {p0 .. p5}, Lorg/telegram/ui/CallLogActivity$CallCell$Factory;->createView(Landroid/content/Context;Lorg/telegram/ui/Components/RecyclerListView;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/CallLogActivity$CallCell;

    move-result-object p1

    return-object p1
.end method

.method public createView(Landroid/content/Context;Lorg/telegram/ui/Components/RecyclerListView;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/CallLogActivity$CallCell;
    .locals 0

    .line 605
    new-instance p2, Lorg/telegram/ui/CallLogActivity$CallCell;

    invoke-direct {p2, p1, p3}, Lorg/telegram/ui/CallLogActivity$CallCell;-><init>(Landroid/content/Context;I)V

    return-object p2
.end method
