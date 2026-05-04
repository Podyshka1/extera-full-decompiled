.class public Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity$EditorIconCell$Factory;
.super Lorg/telegram/ui/Components/UItem$UItemFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity$EditorIconCell;
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

    .line 275
    new-instance v0, Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity$EditorIconCell$Factory;

    invoke-direct {v0}, Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity$EditorIconCell$Factory;-><init>()V

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem$UItemFactory;->setup(Lorg/telegram/ui/Components/UItem$UItemFactory;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 272
    invoke-direct {p0}, Lorg/telegram/ui/Components/UItem$UItemFactory;-><init>()V

    return-void
.end method

.method public static asIcon(ILjava/lang/CharSequence;Ljava/lang/Object;)Lorg/telegram/ui/Components/UItem;
    .locals 1

    .line 336
    const-class v0, Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity$EditorIconCell$Factory;

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->ofFactory(Ljava/lang/Class;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 337
    iput p0, v0, Lorg/telegram/ui/Components/UItem;->id:I

    .line 338
    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    .line 339
    iput-object p2, v0, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Lorg/telegram/ui/Components/UItem;ZLorg/telegram/ui/Components/UniversalAdapter;Lorg/telegram/ui/Components/UniversalRecyclerView;)V
    .locals 3

    .line 308
    check-cast p1, Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity$EditorIconCell;

    .line 309
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCell;->reset()V

    .line 312
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    instance-of p4, p4, Lcom/exteragram/messenger/icons/ExteraResources;

    if-eqz p4, :cond_0

    .line 313
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    check-cast p4, Lcom/exteragram/messenger/icons/ExteraResources;

    iget p5, p2, Lorg/telegram/ui/Components/UItem;->id:I

    invoke-virtual {p4, p5}, Lcom/exteragram/messenger/icons/ExteraResources;->getOriginalDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    goto :goto_0

    .line 315
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    iget p5, p2, Lorg/telegram/ui/Components/UItem;->id:I

    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 319
    :goto_0
    iget-object p5, p2, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of v0, p5, Lcom/exteragram/messenger/icons/IconPack;

    if-eqz v0, :cond_1

    .line 320
    sget-object v0, Lcom/exteragram/messenger/icons/IconManager;->INSTANCE:Lcom/exteragram/messenger/icons/IconManager;

    check-cast p5, Lcom/exteragram/messenger/icons/IconPack;

    iget v1, p2, Lorg/telegram/ui/Components/UItem;->id:I

    invoke-virtual {v0, p5, v1}, Lcom/exteragram/messenger/icons/IconManager;->getPackIconDrawable(Lcom/exteragram/messenger/icons/IconPack;I)Landroid/graphics/drawable/Drawable;

    move-result-object p5

    goto :goto_1

    .line 322
    :cond_1
    sget-object p5, Lcom/exteragram/messenger/icons/IconManager;->INSTANCE:Lcom/exteragram/messenger/icons/IconManager;

    iget v0, p2, Lorg/telegram/ui/Components/UItem;->id:I

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/4 v2, 0x0

    invoke-virtual {p5, v0, v1, v2}, Lcom/exteragram/messenger/icons/IconManager;->getDrawable(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p5

    :goto_1
    if-eqz p4, :cond_2

    .line 326
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 329
    :cond_2
    iget-object p2, p2, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2, p4, p5, p3}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIconAndValueDrawable(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Z)V

    const/4 p2, 0x1

    .line 330
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextCell;->setIsIcon(Z)V

    .line 331
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    const/16 p2, 0x44

    .line 332
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextCell;->setOffsetFromImage(I)V

    return-void
.end method

.method public contentsEquals(Lorg/telegram/ui/Components/UItem;Lorg/telegram/ui/Components/UItem;)Z
    .locals 4

    .line 290
    iget v0, p1, Lorg/telegram/ui/Components/UItem;->id:I

    iget v1, p2, Lorg/telegram/ui/Components/UItem;->id:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 291
    :cond_0
    iget-object v0, p1, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    iget-object v1, p2, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 293
    :cond_1
    iget-object v0, p1, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of v1, v0, Lcom/exteragram/messenger/icons/IconPack;

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    check-cast v0, Lcom/exteragram/messenger/icons/IconPack;

    goto :goto_0

    :cond_2
    move-object v0, v3

    .line 294
    :goto_0
    iget-object p2, p2, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of v1, p2, Lcom/exteragram/messenger/icons/IconPack;

    if-eqz v1, :cond_3

    move-object v3, p2

    check-cast v3, Lcom/exteragram/messenger/icons/IconPack;

    :cond_3
    if-ne v0, v3, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    if-eqz v0, :cond_6

    if-nez v3, :cond_5

    goto :goto_1

    .line 299
    :cond_5
    iget-object p1, p1, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 300
    invoke-virtual {v0}, Lcom/exteragram/messenger/icons/IconPack;->getIcons()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 301
    invoke-virtual {v3}, Lcom/exteragram/messenger/icons/IconPack;->getIcons()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 303
    invoke-static {p2, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_6
    :goto_1
    return v2
.end method

.method public bridge synthetic createView(Landroid/content/Context;Lorg/telegram/ui/Components/RecyclerListView;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/view/View;
    .locals 0

    .line 272
    invoke-virtual/range {p0 .. p5}, Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity$EditorIconCell$Factory;->createView(Landroid/content/Context;Lorg/telegram/ui/Components/RecyclerListView;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity$EditorIconCell;

    move-result-object p1

    return-object p1
.end method

.method public createView(Landroid/content/Context;Lorg/telegram/ui/Components/RecyclerListView;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity$EditorIconCell;
    .locals 0

    .line 280
    new-instance p2, Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity$EditorIconCell;

    invoke-direct {p2, p1, p5}, Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity$EditorIconCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-object p2
.end method

.method public equals(Lorg/telegram/ui/Components/UItem;Lorg/telegram/ui/Components/UItem;)Z
    .locals 0

    .line 285
    iget p1, p1, Lorg/telegram/ui/Components/UItem;->id:I

    iget p2, p2, Lorg/telegram/ui/Components/UItem;->id:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
