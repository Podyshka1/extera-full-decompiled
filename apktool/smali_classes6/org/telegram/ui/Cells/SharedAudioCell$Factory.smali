.class public final Lorg/telegram/ui/Cells/SharedAudioCell$Factory;
.super Lorg/telegram/ui/Components/UItem$UItemFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Cells/SharedAudioCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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

    .line 766
    new-instance v0, Lorg/telegram/ui/Cells/SharedAudioCell$Factory;

    invoke-direct {v0}, Lorg/telegram/ui/Cells/SharedAudioCell$Factory;-><init>()V

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem$UItemFactory;->setup(Lorg/telegram/ui/Components/UItem$UItemFactory;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 765
    invoke-direct {p0}, Lorg/telegram/ui/Components/UItem$UItemFactory;-><init>()V

    return-void
.end method

.method public static as(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/ui/Components/UItem;
    .locals 1

    .line 784
    const-class v0, Lorg/telegram/ui/Cells/SharedAudioCell$Factory;

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->ofFactory(Ljava/lang/Class;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 785
    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Lorg/telegram/ui/Components/UItem;ZLorg/telegram/ui/Components/UniversalAdapter;Lorg/telegram/ui/Components/UniversalRecyclerView;)V
    .locals 0

    .line 777
    check-cast p1, Lorg/telegram/ui/Cells/SharedAudioCell;

    .line 778
    iget-object p4, p2, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    check-cast p4, Lorg/telegram/messenger/MessageObject;

    .line 779
    invoke-virtual {p1, p4, p3}, Lorg/telegram/ui/Cells/SharedAudioCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;Z)V

    .line 780
    iget-boolean p2, p2, Lorg/telegram/ui/Components/UItem;->checked:Z

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Cells/SharedAudioCell;->setChecked(ZZ)V

    return-void
.end method

.method public bridge synthetic createView(Landroid/content/Context;Lorg/telegram/ui/Components/RecyclerListView;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/view/View;
    .locals 0

    .line 765
    invoke-virtual/range {p0 .. p5}, Lorg/telegram/ui/Cells/SharedAudioCell$Factory;->createView(Landroid/content/Context;Lorg/telegram/ui/Components/RecyclerListView;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Cells/SharedAudioCell;

    move-result-object p1

    return-object p1
.end method

.method public createView(Landroid/content/Context;Lorg/telegram/ui/Components/RecyclerListView;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Cells/SharedAudioCell;
    .locals 0

    .line 770
    new-instance p2, Lorg/telegram/ui/Cells/SharedAudioCell;

    invoke-direct {p2, p1, p5}, Lorg/telegram/ui/Cells/SharedAudioCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/high16 p1, 0x41400000    # 12.0f

    .line 771
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    const/4 p4, 0x0

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-virtual {p2, p3, p4, p1, p4}, Landroid/view/View;->setPadding(IIII)V

    return-object p2
.end method
