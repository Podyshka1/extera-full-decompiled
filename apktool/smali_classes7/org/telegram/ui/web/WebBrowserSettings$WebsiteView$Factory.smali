.class public Lorg/telegram/ui/web/WebBrowserSettings$WebsiteView$Factory;
.super Lorg/telegram/ui/Components/UItem$UItemFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/web/WebBrowserSettings$WebsiteView;
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

    .line 659
    new-instance v0, Lorg/telegram/ui/web/WebBrowserSettings$WebsiteView$Factory;

    invoke-direct {v0}, Lorg/telegram/ui/web/WebBrowserSettings$WebsiteView$Factory;-><init>()V

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem$UItemFactory;->setup(Lorg/telegram/ui/Components/UItem$UItemFactory;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 658
    invoke-direct {p0}, Lorg/telegram/ui/Components/UItem$UItemFactory;-><init>()V

    return-void
.end method

.method public static as(Ljava/util/ArrayList;Ljava/lang/String;Landroid/graphics/Bitmap;)Lorg/telegram/ui/Components/UItem;
    .locals 1

    .line 671
    const-class v0, Lorg/telegram/ui/web/WebBrowserSettings$WebsiteView$Factory;

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->ofFactory(Ljava/lang/Class;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 672
    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    .line 673
    iput-object p2, v0, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    .line 674
    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->object2:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Lorg/telegram/ui/Components/UItem;ZLorg/telegram/ui/Components/UniversalAdapter;Lorg/telegram/ui/Components/UniversalRecyclerView;)V
    .locals 1

    .line 667
    check-cast p1, Lorg/telegram/ui/web/WebBrowserSettings$WebsiteView;

    iget-object p4, p2, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    iget-object p5, p2, Lorg/telegram/ui/Components/UItem;->object2:Ljava/lang/Object;

    check-cast p5, Ljava/util/ArrayList;

    iget-object p2, p2, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of v0, p2, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    check-cast p2, Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p4, p5, p2, p3}, Lorg/telegram/ui/web/WebBrowserSettings$WebsiteView;->set(Ljava/lang/CharSequence;Ljava/util/ArrayList;Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public bridge synthetic createView(Landroid/content/Context;Lorg/telegram/ui/Components/RecyclerListView;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/view/View;
    .locals 0

    .line 658
    invoke-virtual/range {p0 .. p5}, Lorg/telegram/ui/web/WebBrowserSettings$WebsiteView$Factory;->createView(Landroid/content/Context;Lorg/telegram/ui/Components/RecyclerListView;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/web/WebBrowserSettings$WebsiteView;

    move-result-object p1

    return-object p1
.end method

.method public createView(Landroid/content/Context;Lorg/telegram/ui/Components/RecyclerListView;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/web/WebBrowserSettings$WebsiteView;
    .locals 0

    .line 662
    new-instance p2, Lorg/telegram/ui/web/WebBrowserSettings$WebsiteView;

    invoke-direct {p2, p1}, Lorg/telegram/ui/web/WebBrowserSettings$WebsiteView;-><init>(Landroid/content/Context;)V

    return-object p2
.end method
