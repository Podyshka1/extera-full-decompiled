.class Lorg/telegram/ui/ThemeActivity$ThemeAccentsListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ThemeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThemeAccentsListAdapter"
.end annotation


# instance fields
.field private currentTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

.field private mContext:Landroid/content/Context;

.field private themeAccents:Ljava/util/ArrayList;

.field final synthetic this$0:Lorg/telegram/ui/ThemeActivity;


# direct methods
.method static bridge synthetic -$$Nest$fgetcurrentTheme(Lorg/telegram/ui/ThemeActivity$ThemeAccentsListAdapter;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ThemeActivity$ThemeAccentsListAdapter;->currentTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetthemeAccents(Lorg/telegram/ui/ThemeActivity$ThemeAccentsListAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ThemeActivity$ThemeAccentsListAdapter;->themeAccents:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mfindCurrentAccent(Lorg/telegram/ui/ThemeActivity$ThemeAccentsListAdapter;)I
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ThemeActivity$ThemeAccentsListAdapter;->findCurrentAccent()I

    move-result p0

    return p0
.end method

.method constructor <init>(Lorg/telegram/ui/ThemeActivity;Landroid/content/Context;)V
    .locals 0

    .line 1981
    iput-object p1, p0, Lorg/telegram/ui/ThemeActivity$ThemeAccentsListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 1982
    iput-object p2, p0, Lorg/telegram/ui/ThemeActivity$ThemeAccentsListAdapter;->mContext:Landroid/content/Context;

    .line 1983
    invoke-virtual {p0}, Lorg/telegram/ui/ThemeActivity$ThemeAccentsListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private findCurrentAccent()I
    .locals 3

    .line 2038
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ThemeAccentsListAdapter;->themeAccents:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/ThemeActivity$ThemeAccentsListAdapter;->currentTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->getAccent(Z)Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 2034
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ThemeAccentsListAdapter;->themeAccents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ThemeAccentsListAdapter;->themeAccents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 2000
    invoke-virtual {p0}, Lorg/telegram/ui/ThemeActivity$ThemeAccentsListAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .line 1988
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ThemeAccentsListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentNightTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/telegram/ui/ThemeActivity$ThemeAccentsListAdapter;->currentTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    .line 1989
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/ThemeActivity$ThemeAccentsListAdapter;->currentTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->themeAccents:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/telegram/ui/ThemeActivity$ThemeAccentsListAdapter;->themeAccents:Ljava/util/ArrayList;

    .line 1990
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 2018
    invoke-virtual {p0, p2}, Lorg/telegram/ui/ThemeActivity$ThemeAccentsListAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 p2, 0x1

    if-eq v0, p2, :cond_0

    return-void

    .line 2025
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ThemeActivity$InnerCustomAccentView;

    .line 2026
    iget-object p2, p0, Lorg/telegram/ui/ThemeActivity$ThemeAccentsListAdapter;->currentTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    invoke-static {p1, p2}, Lorg/telegram/ui/ThemeActivity$InnerCustomAccentView;->-$$Nest$msetTheme(Lorg/telegram/ui/ThemeActivity$InnerCustomAccentView;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V

    return-void

    .line 2020
    :cond_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ThemeActivity$InnerAccentView;

    .line 2021
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ThemeAccentsListAdapter;->currentTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget-object v1, p0, Lorg/telegram/ui/ThemeActivity$ThemeAccentsListAdapter;->themeAccents:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    invoke-virtual {p1, v0, p2}, Lorg/telegram/ui/ThemeActivity$InnerAccentView;->setThemeAndColor(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    if-eqz p2, :cond_0

    .line 2011
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    new-instance p2, Lorg/telegram/ui/ThemeActivity$InnerCustomAccentView;

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ThemeAccentsListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lorg/telegram/ui/ThemeActivity$InnerCustomAccentView;-><init>(Landroid/content/Context;)V

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1

    .line 2007
    :cond_0
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    new-instance p2, Lorg/telegram/ui/ThemeActivity$InnerAccentView;

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ThemeAccentsListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lorg/telegram/ui/ThemeActivity$InnerAccentView;-><init>(Landroid/content/Context;)V

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
