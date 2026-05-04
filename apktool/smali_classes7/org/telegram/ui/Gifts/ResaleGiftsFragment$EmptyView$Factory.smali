.class public Lorg/telegram/ui/Gifts/ResaleGiftsFragment$EmptyView$Factory;
.super Lorg/telegram/ui/Components/UItem$UItemFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Gifts/ResaleGiftsFragment$EmptyView;
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

    .line 1174
    new-instance v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$EmptyView$Factory;

    invoke-direct {v0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$EmptyView$Factory;-><init>()V

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem$UItemFactory;->setup(Lorg/telegram/ui/Components/UItem$UItemFactory;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1173
    invoke-direct {p0}, Lorg/telegram/ui/Components/UItem$UItemFactory;-><init>()V

    return-void
.end method

.method public static asEmptyView(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;
    .locals 1

    .line 1187
    const-class v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$EmptyView$Factory;

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->ofFactory(Ljava/lang/Class;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 1188
    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Lorg/telegram/ui/Components/UItem;ZLorg/telegram/ui/Components/UniversalAdapter;Lorg/telegram/ui/Components/UniversalRecyclerView;)V
    .locals 0

    .line 1183
    check-cast p1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$EmptyView;

    iget-object p2, p2, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$EmptyView;->set(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic createView(Landroid/content/Context;Lorg/telegram/ui/Components/RecyclerListView;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/view/View;
    .locals 0

    .line 1173
    invoke-virtual/range {p0 .. p5}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$EmptyView$Factory;->createView(Landroid/content/Context;Lorg/telegram/ui/Components/RecyclerListView;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$EmptyView;

    move-result-object p1

    return-object p1
.end method

.method public createView(Landroid/content/Context;Lorg/telegram/ui/Components/RecyclerListView;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$EmptyView;
    .locals 0

    .line 1178
    new-instance p2, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$EmptyView;

    invoke-direct {p2, p1, p5}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$EmptyView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-object p2
.end method
