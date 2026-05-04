.class public Lorg/telegram/ui/SettingsActivity$SuggestionCell$Factory;
.super Lorg/telegram/ui/Components/UItem$UItemFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/SettingsActivity$SuggestionCell;
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

    .line 1383
    new-instance v0, Lorg/telegram/ui/SettingsActivity$SuggestionCell$Factory;

    invoke-direct {v0}, Lorg/telegram/ui/SettingsActivity$SuggestionCell$Factory;-><init>()V

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem$UItemFactory;->setup(Lorg/telegram/ui/Components/UItem$UItemFactory;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1382
    invoke-direct {p0}, Lorg/telegram/ui/Components/UItem$UItemFactory;-><init>()V

    return-void
.end method

.method public static of(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lorg/telegram/ui/Components/UItem;
    .locals 1

    .line 1410
    const-class v0, Lorg/telegram/ui/SettingsActivity$SuggestionCell$Factory;

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->ofFactory(Ljava/lang/Class;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 1411
    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    .line 1412
    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->subtext:Ljava/lang/CharSequence;

    .line 1413
    iput-object p2, v0, Lorg/telegram/ui/Components/UItem;->textValue:Ljava/lang/CharSequence;

    .line 1414
    iput-object p3, v0, Lorg/telegram/ui/Components/UItem;->clickCallback:Landroid/view/View$OnClickListener;

    .line 1415
    iput-object p4, v0, Lorg/telegram/ui/Components/UItem;->animatedText:Ljava/lang/CharSequence;

    .line 1416
    iput-object p5, v0, Lorg/telegram/ui/Components/UItem;->clickCallback2:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Lorg/telegram/ui/Components/UItem;ZLorg/telegram/ui/Components/UniversalAdapter;Lorg/telegram/ui/Components/UniversalRecyclerView;)V
    .locals 7

    .line 1397
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/SettingsActivity$SuggestionCell;

    iget-object v1, p2, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    iget-object v2, p2, Lorg/telegram/ui/Components/UItem;->subtext:Ljava/lang/CharSequence;

    iget-object v3, p2, Lorg/telegram/ui/Components/UItem;->textValue:Ljava/lang/CharSequence;

    iget-object v4, p2, Lorg/telegram/ui/Components/UItem;->clickCallback:Landroid/view/View$OnClickListener;

    iget-object v5, p2, Lorg/telegram/ui/Components/UItem;->animatedText:Ljava/lang/CharSequence;

    iget-object v6, p2, Lorg/telegram/ui/Components/UItem;->clickCallback2:Landroid/view/View$OnClickListener;

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/SettingsActivity$SuggestionCell;->set(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic createView(Landroid/content/Context;Lorg/telegram/ui/Components/RecyclerListView;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/view/View;
    .locals 0

    .line 1382
    invoke-virtual/range {p0 .. p5}, Lorg/telegram/ui/SettingsActivity$SuggestionCell$Factory;->createView(Landroid/content/Context;Lorg/telegram/ui/Components/RecyclerListView;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/SettingsActivity$SuggestionCell;

    move-result-object p1

    return-object p1
.end method

.method public createView(Landroid/content/Context;Lorg/telegram/ui/Components/RecyclerListView;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/SettingsActivity$SuggestionCell;
    .locals 0

    .line 1387
    new-instance p2, Lorg/telegram/ui/SettingsActivity$SuggestionCell;

    invoke-direct {p2, p1, p5}, Lorg/telegram/ui/SettingsActivity$SuggestionCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-object p2
.end method

.method public isClickable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
