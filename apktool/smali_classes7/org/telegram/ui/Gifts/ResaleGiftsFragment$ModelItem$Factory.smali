.class public Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ModelItem$Factory;
.super Lorg/telegram/ui/Components/UItem$UItemFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ModelItem;
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

    .line 1321
    new-instance v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ModelItem$Factory;

    invoke-direct {v0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ModelItem$Factory;-><init>()V

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem$UItemFactory;->setup(Lorg/telegram/ui/Components/UItem$UItemFactory;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1320
    invoke-direct {p0}, Lorg/telegram/ui/Components/UItem$UItemFactory;-><init>()V

    return-void
.end method

.method public static asModel(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;ILjava/lang/String;)Lorg/telegram/ui/Components/UItem;
    .locals 1

    .line 1334
    const-class v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ModelItem$Factory;

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->ofFactory(Ljava/lang/Class;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 1335
    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    .line 1336
    iput-object p2, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    .line 1337
    iput p1, v0, Lorg/telegram/ui/Components/UItem;->intValue:I

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Lorg/telegram/ui/Components/UItem;ZLorg/telegram/ui/Components/UniversalAdapter;Lorg/telegram/ui/Components/UniversalRecyclerView;)V
    .locals 0

    .line 1330
    check-cast p1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ModelItem;

    iget-object p3, p2, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    check-cast p3, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

    iget p4, p2, Lorg/telegram/ui/Components/UItem;->intValue:I

    iget-object p5, p2, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    check-cast p5, Ljava/lang/String;

    iget-boolean p2, p2, Lorg/telegram/ui/Components/UItem;->checked:Z

    invoke-virtual {p1, p3, p4, p5, p2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ModelItem;->set(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;ILjava/lang/String;Z)V

    return-void
.end method

.method public bridge synthetic createView(Landroid/content/Context;Lorg/telegram/ui/Components/RecyclerListView;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/view/View;
    .locals 0

    .line 1320
    invoke-virtual/range {p0 .. p5}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ModelItem$Factory;->createView(Landroid/content/Context;Lorg/telegram/ui/Components/RecyclerListView;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ModelItem;

    move-result-object p1

    return-object p1
.end method

.method public createView(Landroid/content/Context;Lorg/telegram/ui/Components/RecyclerListView;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ModelItem;
    .locals 0

    .line 1325
    new-instance p2, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ModelItem;

    invoke-direct {p2, p1, p3, p5}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ModelItem;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-object p2
.end method
