.class Lorg/telegram/ui/Stories/recorder/StoryLinkSheet$3;
.super Lorg/telegram/ui/Components/UniversalAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/StoryLinkSheet;->createAdapter(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/StoryLinkSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/StoryLinkSheet;Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;IIZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryLinkSheet$3;->this$0:Lorg/telegram/ui/Stories/recorder/StoryLinkSheet;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Lorg/telegram/ui/Components/UniversalAdapter;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;IIZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected getThemedColor(I)I
    .locals 1

    .line 284
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackgroundGray:I

    if-ne p1, v0, :cond_0

    const p1, -0xf2f2f3

    return p1

    .line 286
    :cond_0
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/UniversalAdapter;->getThemedColor(I)I

    move-result p1

    return p1
.end method
