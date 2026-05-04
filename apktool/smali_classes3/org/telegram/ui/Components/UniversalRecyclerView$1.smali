.class Lorg/telegram/ui/Components/UniversalRecyclerView$1;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/UniversalRecyclerView;-><init>(Landroid/content/Context;IIZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback5;Lorg/telegram/messenger/Utilities$Callback5Return;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/UniversalRecyclerView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/UniversalRecyclerView;Landroid/content/Context;IZ)V
    .locals 0

    .line 94
    iput-object p1, p0, Lorg/telegram/ui/Components/UniversalRecyclerView$1;->this$0:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-direct {p0, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method protected getExtraLayoutSpace(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalRecyclerView$1;->this$0:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/UniversalRecyclerView;->-$$Nest$fgetdoNotDetachViews(Lorg/telegram/ui/Components/UniversalRecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    return p1

    .line 98
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getExtraLayoutSpace(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method
