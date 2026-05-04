.class Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private items:Ljava/util/ArrayList;

.field final synthetic this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;


# direct methods
.method static bridge synthetic -$$Nest$fgetitems(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ListAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ListAdapter;->items:Ljava/util/ArrayList;

    return-object p0
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 8

    .line 1315
    iput-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ListAdapter;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 1313
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ListAdapter;->items:Ljava/util/ArrayList;

    .line 1316
    iput-object p2, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ListAdapter;->context:Landroid/content/Context;

    .line 1317
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 1318
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    .line 1319
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 1320
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ThemeDescription;->getCurrentKey()I

    move-result v2

    .line 1321
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 1323
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1324
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1325
    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1327
    :cond_0
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1329
    :cond_1
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1a

    if-lt p2, p3, :cond_2

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1330
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1331
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1332
    iget-object p2, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public getItem(I)Ljava/util/ArrayList;
    .locals 1

    if-ltz p1, :cond_1

    .line 1342
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 1345
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1338
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .line 1372
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-nez v0, :cond_1

    .line 1373
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ListAdapter;->items:Ljava/util/ArrayList;

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 1374
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 1376
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/ThemeDescription;->getCurrentKey()I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper:I

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 1379
    :cond_0
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/ThemeDescription;->getSetColor()I

    move-result v0

    .line 1381
    :goto_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextColorThemeCell;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/ThemeDescription;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Cells/TextColorThemeCell;->setTextAndColor(Ljava/lang/CharSequence;I)V

    :cond_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 p1, -0x1

    if-eqz p2, :cond_0

    .line 1363
    new-instance p2, Landroid/view/View;

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ListAdapter;->context:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1364
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/high16 v1, 0x42600000    # 56.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1358
    :cond_0
    new-instance p2, Lorg/telegram/ui/Cells/TextColorThemeCell;

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ListAdapter;->context:Landroid/content/Context;

    invoke-direct {p2, v0}, Lorg/telegram/ui/Cells/TextColorThemeCell;-><init>(Landroid/content/Context;)V

    .line 1359
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1367
    :goto_0
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
