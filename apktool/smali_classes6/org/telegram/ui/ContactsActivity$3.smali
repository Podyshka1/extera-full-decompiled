.class Lorg/telegram/ui/ContactsActivity$3;
.super Lorg/telegram/ui/Adapters/SearchAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ContactsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ContactsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ContactsActivity;Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;Landroidx/collection/LongSparseArray;Landroidx/collection/LongSparseArray;ZZZZZZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 433
    iput-object p1, p0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object p1, p0

    invoke-direct/range {p1 .. p13}, Lorg/telegram/ui/Adapters/SearchAdapter;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;Landroidx/collection/LongSparseArray;Landroidx/collection/LongSparseArray;ZZZZZZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected onSearchProgressChanged()V
    .locals 3

    .line 436
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/SearchAdapter;->searchInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/SearchAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 437
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ContactsActivity;->-$$Nest$fgetemptyView(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    :cond_0
    return-void
.end method
