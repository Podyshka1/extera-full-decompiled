.class Lorg/telegram/ui/MessageSendPreview$6;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/MessageSendPreview;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/MessageSendPreview;


# direct methods
.method constructor <init>(Lorg/telegram/ui/MessageSendPreview;)V
    .locals 0

    .line 791
    iput-object p1, p0, Lorg/telegram/ui/MessageSendPreview$6;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 794
    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview$6;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {p1}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetchatListView(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
