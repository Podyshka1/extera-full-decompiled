.class Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$8;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;)V
    .locals 0

    .line 2004
    iput-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$8;->this$0:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 2007
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$8;->this$0:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;

    invoke-static {p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->-$$Nest$monScroll(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;)V

    return-void
.end method
