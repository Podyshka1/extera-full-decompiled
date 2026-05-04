.class Lorg/telegram/ui/FilterCreateActivity$ListAdapter$1;
.super Lorg/telegram/ui/Cells/EditEmojiTextCell;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/FilterCreateActivity$ListAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/FilterCreateActivity$ListAdapter;Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Ljava/lang/String;ZIILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 1471
    iput-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/FilterCreateActivity$ListAdapter;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Lorg/telegram/ui/Cells/EditEmojiTextCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Ljava/lang/String;ZIILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public emojiCacheType()I
    .locals 1

    const/16 v0, 0x19

    return v0
.end method
