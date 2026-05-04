.class Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$1;
.super Lorg/telegram/ui/Components/UniversalRecyclerView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;

.field final synthetic val$parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;Landroid/content/Context;IIZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback5;Lorg/telegram/messenger/Utilities$Callback5Return;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;IILorg/telegram/ui/Gifts/ProfileGiftsContainer;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$1;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;

    iput-object p12, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$1;->val$parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    move-object p1, p0

    invoke-direct/range {p1 .. p11}, Lorg/telegram/ui/Components/UniversalRecyclerView;-><init>(Landroid/content/Context;IIZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback5;Lorg/telegram/messenger/Utilities$Callback5Return;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;II)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .line 222
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Components/RecyclerListView;->onLayout(ZIIII)V

    move-object p1, p0

    .line 223
    iget-object p2, p1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$1;->val$parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-virtual {p2}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->updateTabsY()V

    return-void
.end method
