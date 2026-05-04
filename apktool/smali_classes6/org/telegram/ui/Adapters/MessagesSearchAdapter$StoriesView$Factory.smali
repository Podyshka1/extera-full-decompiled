.class public Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView$Factory;
.super Lorg/telegram/ui/Components/UItem$UItemFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;
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

    .line 471
    new-instance v0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView$Factory;

    invoke-direct {v0}, Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView$Factory;-><init>()V

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem$UItemFactory;->setup(Lorg/telegram/ui/Components/UItem$UItemFactory;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 470
    invoke-direct {p0}, Lorg/telegram/ui/Components/UItem$UItemFactory;-><init>()V

    return-void
.end method

.method public static asStoriesList(Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;)Lorg/telegram/ui/Components/UItem;
    .locals 1

    .line 484
    const-class v0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView$Factory;

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->ofFactory(Ljava/lang/Class;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 485
    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Lorg/telegram/ui/Components/UItem;ZLorg/telegram/ui/Components/UniversalAdapter;Lorg/telegram/ui/Components/UniversalRecyclerView;)V
    .locals 0

    .line 480
    check-cast p1, Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;

    iget-object p2, p2, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    check-cast p2, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;->set(Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;)Z

    return-void
.end method

.method public bridge synthetic createView(Landroid/content/Context;Lorg/telegram/ui/Components/RecyclerListView;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/view/View;
    .locals 0

    .line 470
    invoke-virtual/range {p0 .. p5}, Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView$Factory;->createView(Landroid/content/Context;Lorg/telegram/ui/Components/RecyclerListView;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;

    move-result-object p1

    return-object p1
.end method

.method public createView(Landroid/content/Context;Lorg/telegram/ui/Components/RecyclerListView;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;
    .locals 0

    .line 475
    new-instance p2, Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;

    invoke-direct {p2, p1, p5}, Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-object p2
.end method
