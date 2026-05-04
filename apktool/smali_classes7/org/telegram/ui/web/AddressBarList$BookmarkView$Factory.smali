.class public Lorg/telegram/ui/web/AddressBarList$BookmarkView$Factory;
.super Lorg/telegram/ui/Components/UItem$UItemFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/web/AddressBarList$BookmarkView;
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

    .line 902
    new-instance v0, Lorg/telegram/ui/web/AddressBarList$BookmarkView$Factory;

    invoke-direct {v0}, Lorg/telegram/ui/web/AddressBarList$BookmarkView$Factory;-><init>()V

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem$UItemFactory;->setup(Lorg/telegram/ui/Components/UItem$UItemFactory;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 901
    invoke-direct {p0}, Lorg/telegram/ui/Components/UItem$UItemFactory;-><init>()V

    return-void
.end method

.method public static as(Lorg/telegram/messenger/MessageObject;Z)Lorg/telegram/ui/Components/UItem;
    .locals 2

    .line 927
    const-class v0, Lorg/telegram/ui/web/AddressBarList$BookmarkView$Factory;

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->ofFactory(Ljava/lang/Class;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    const/4 v1, 0x3

    .line 928
    iput v1, v0, Lorg/telegram/ui/Components/UItem;->intValue:I

    .line 929
    iput-boolean p1, v0, Lorg/telegram/ui/Components/UItem;->accent:Z

    .line 930
    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->object2:Ljava/lang/Object;

    return-object v0
.end method

.method public static as(Lorg/telegram/messenger/MessageObject;ZLjava/lang/String;)Lorg/telegram/ui/Components/UItem;
    .locals 2

    .line 935
    const-class v0, Lorg/telegram/ui/web/AddressBarList$BookmarkView$Factory;

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->ofFactory(Ljava/lang/Class;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    const/4 v1, 0x3

    .line 936
    iput v1, v0, Lorg/telegram/ui/Components/UItem;->intValue:I

    .line 937
    iput-boolean p1, v0, Lorg/telegram/ui/Components/UItem;->accent:Z

    .line 938
    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->object2:Ljava/lang/Object;

    .line 939
    iput-object p2, v0, Lorg/telegram/ui/Components/UItem;->subtext:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static as(Lorg/telegram/ui/web/BrowserHistory$Entry;Ljava/lang/String;)Lorg/telegram/ui/Components/UItem;
    .locals 2

    .line 944
    const-class v0, Lorg/telegram/ui/web/AddressBarList$BookmarkView$Factory;

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->ofFactory(Ljava/lang/Class;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    const/4 v1, 0x3

    .line 945
    iput v1, v0, Lorg/telegram/ui/Components/UItem;->intValue:I

    const/4 v1, 0x0

    .line 946
    iput-boolean v1, v0, Lorg/telegram/ui/Components/UItem;->accent:Z

    .line 947
    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->object2:Ljava/lang/Object;

    .line 948
    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->subtext:Ljava/lang/CharSequence;

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Lorg/telegram/ui/Components/UItem;ZLorg/telegram/ui/Components/UniversalAdapter;Lorg/telegram/ui/Components/UniversalRecyclerView;)V
    .locals 6

    .line 910
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/web/AddressBarList$BookmarkView;

    .line 911
    iget-object p1, p2, Lorg/telegram/ui/Components/UItem;->object2:Ljava/lang/Object;

    instance-of p4, p1, Lorg/telegram/messenger/MessageObject;

    const/4 p5, 0x0

    if-eqz p4, :cond_1

    .line 912
    move-object v1, p1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    iget-boolean v2, p2, Lorg/telegram/ui/Components/UItem;->accent:Z

    iget-object p1, p2, Lorg/telegram/ui/Components/UItem;->subtext:Ljava/lang/CharSequence;

    if-nez p1, :cond_0

    :goto_0
    move-object v3, p5

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p5

    goto :goto_0

    :goto_1
    iget-boolean v4, p2, Lorg/telegram/ui/Components/UItem;->checked:Z

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->set(Lorg/telegram/messenger/MessageObject;ZLjava/lang/String;ZZ)V

    return-void

    :cond_1
    move v5, p3

    .line 913
    instance-of p3, p1, Lorg/telegram/ui/web/BrowserHistory$Entry;

    if-eqz p3, :cond_3

    .line 914
    check-cast p1, Lorg/telegram/ui/web/BrowserHistory$Entry;

    iget-object p2, p2, Lorg/telegram/ui/Components/UItem;->subtext:Ljava/lang/CharSequence;

    if-nez p2, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p5

    :goto_2
    invoke-virtual {v0, p1, p5, v5}, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->set(Lorg/telegram/ui/web/BrowserHistory$Entry;Ljava/lang/String;Z)V

    :cond_3
    return-void
.end method

.method public contentsEquals(Lorg/telegram/ui/Components/UItem;Lorg/telegram/ui/Components/UItem;)Z
    .locals 2

    .line 960
    iget-object v0, p1, Lorg/telegram/ui/Components/UItem;->object2:Ljava/lang/Object;

    iget-object v1, p2, Lorg/telegram/ui/Components/UItem;->object2:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Lorg/telegram/ui/Components/UItem;->subtext:Ljava/lang/CharSequence;

    iget-object p2, p2, Lorg/telegram/ui/Components/UItem;->subtext:Ljava/lang/CharSequence;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic createView(Landroid/content/Context;Lorg/telegram/ui/Components/RecyclerListView;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/view/View;
    .locals 0

    .line 901
    invoke-virtual/range {p0 .. p5}, Lorg/telegram/ui/web/AddressBarList$BookmarkView$Factory;->createView(Landroid/content/Context;Lorg/telegram/ui/Components/RecyclerListView;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/web/AddressBarList$BookmarkView;

    move-result-object p1

    return-object p1
.end method

.method public createView(Landroid/content/Context;Lorg/telegram/ui/Components/RecyclerListView;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/web/AddressBarList$BookmarkView;
    .locals 0

    .line 905
    new-instance p2, Lorg/telegram/ui/web/AddressBarList$BookmarkView;

    invoke-direct {p2, p1, p5}, Lorg/telegram/ui/web/AddressBarList$BookmarkView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-object p2
.end method

.method public equals(Lorg/telegram/ui/Components/UItem;Lorg/telegram/ui/Components/UItem;)Z
    .locals 2

    .line 955
    iget-object v0, p1, Lorg/telegram/ui/Components/UItem;->object2:Ljava/lang/Object;

    iget-object v1, p2, Lorg/telegram/ui/Components/UItem;->object2:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Lorg/telegram/ui/Components/UItem;->subtext:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    iget-object p2, p2, Lorg/telegram/ui/Components/UItem;->subtext:Ljava/lang/CharSequence;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
