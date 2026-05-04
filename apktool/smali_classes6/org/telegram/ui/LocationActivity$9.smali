.class Lorg/telegram/ui/LocationActivity$9;
.super Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LocationActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LocationActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LocationActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZZ)V
    .locals 0

    .line 1323
    iput-object p1, p0, Lorg/telegram/ui/LocationActivity$9;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZZ)V

    return-void
.end method


# virtual methods
.method public notifyDataSetChanged()V
    .locals 5

    .line 1326
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$9;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v0}, Lorg/telegram/ui/LocationActivity;->-$$Nest$fgetsearchItem(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1327
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$9;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v0}, Lorg/telegram/ui/LocationActivity;->-$$Nest$fgetsearchItem(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$9;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v1}, Lorg/telegram/ui/LocationActivity;->-$$Nest$fgetsearchAdapter(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->isSearching()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setShowSearchProgress(Z)V

    .line 1329
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$9;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v0}, Lorg/telegram/ui/LocationActivity;->-$$Nest$fgetemptySubtitleTextView(Lorg/telegram/ui/LocationActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1330
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$9;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v0}, Lorg/telegram/ui/LocationActivity;->-$$Nest$fgetemptySubtitleTextView(Lorg/telegram/ui/LocationActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->NoPlacesFoundInfo:I

    iget-object v2, p0, Lorg/telegram/ui/LocationActivity$9;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v2}, Lorg/telegram/ui/LocationActivity;->-$$Nest$fgetsearchAdapter(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->getLastSearchString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const-string v2, "NoPlacesFoundInfo"

    invoke-static {v2, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1332
    :cond_1
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
